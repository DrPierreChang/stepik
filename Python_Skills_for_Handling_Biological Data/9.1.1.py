test_prot = "RKMSGYIQFEVHYWKD"
answer = "RKMSGYIQFEVRKMSG"


def replace_aa(test_prot):
    return test_prot[:-5] + test_prot[:5]


print(replace_aa(test_prot) == answer)
