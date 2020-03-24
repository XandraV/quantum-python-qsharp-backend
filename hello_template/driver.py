import qsharp

from Something import HelloQ, ApplyGate

def get_probability_of_one():
    count = 0
    for i in range(1000):
        res = HelloQ.simulate()

        if str(res) == '1':
            print('X')
            count = count + 1
        else:
            print('.')
    print('Probability of 1s: '+ str(count/1000))
    return str(count/1000)

def get_result(start, gate_name):
    result = ApplyGate.simulate(start_state=start, gate=gate_name)
    return result