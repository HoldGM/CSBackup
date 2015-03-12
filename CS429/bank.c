#import <stdio.h>
#import <string.h>
#import <limits.h>

struct bank_account{
	char patron_name[6];
	long balance;
}account;

int main(int argc, char **argv)
{
	printf("You have written %s\n", argv[1]);

	struct bank_account jillAccount;
	strcpy(jillAccount.patron_name, argv[1]);
	jillAccount.balance = 5000;

	printf("Account Name is %s\n", jillAccount.patron_name);
	printf("Account Balance: %d\n", jillAccount.balance);
	return 0;
}


// 7000 in hex = 1b58

// r $(perl -e "print 'jill'")