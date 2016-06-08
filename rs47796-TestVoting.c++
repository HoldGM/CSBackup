#include <string>
#include "Voting.h"
#include <fstream>
#include <iostream>
#include "gtest/gtest.h"
#include <sstream>


using namespace std;

TEST(VotingFixture, ballot_1){
	Ballot b;
	b.newBallot("1 2 3 4 5\n");
	EXPECT_EQ(1, b.ballot[0]);
	EXPECT_EQ(2, b.ballot[1]);
	EXPECT_EQ(3, b.ballot[2]);
	EXPECT_EQ(4, b.ballot[3]);
	EXPECT_EQ(5, b.ballot[4]);
}

TEST(VotingFixture, candidate_1){
	Candidate c;
	c.setName("John Doe");
	EXPECT_EQ("John Doe", c.name);
}

TEST(VotingFixture, candidate_2){
	Candidate c;
	EXPECT_EQ(0, c.count);
}

TEST(VotingFixture, loser_1){
	Candidate c;
	c.loserFlag = 1;
	EXPECT_EQ(1, c.loserFlag);
}

TEST(VotingFixture, loser_2){
	Candidate c;
	EXPECT_EQ(0, c.loserFlag);
}

TEST(VotingFixture, eval_1){
	Candidate c[3];
	Ballot w;
	w.newBallot("1 2 3 4 5\n");
	c[0].setName("John Doe");
	c[1].setName("Jane Smith");
	c[2].setName("Sirhan Sirhan");
	c[0].addBallot(w);
	ostringstream o;
	eval(c, 1, 3, o);
	EXPECT_EQ("John Doe\n", o.str());

}

TEST(VotingFixture, eval_2){
	Candidate c[2];
	Ballot w1;
	Ballot w2;
	w1.newBallot("1 2\n");
	w2.newBallot("2 1\n");
	c[0].setName("Tiger");
	c[1].setName("Lion");
	c[0].addBallot(w1);
	c[1].addBallot(w2);
	ostringstream o;
	eval(c, 2, 2, o);
	EXPECT_EQ("Tiger\nLion\n", o.str());

}

TEST(VotingFixture, getTests_1){
	istringstream i("1\n\n3\nJohn Doe\nJane Smith\nSirhan Sirhan\n1 2 3\n2 1 3\n2 3 1\n1 2 3\n3 1 2\n");
	ostringstream o;
	getTests(i,o);
	EXPECT_EQ("John Doe\n", o.str());
}

TEST(VotingFixture, getTests_2){
	istringstream i("1\n\n2\nTiger\nLion\n2 1\n1 2\n2 1\n1 2\n2 1\n1 2\n2 1\n2 1\n2 1\n1 2\n1 2\n2 1\n1 2\n1 2\n1 2\n2 1\n2 1\n2 1\n1 2\n1 2\n");
	ostringstream o;
	getTests(i,o);
	EXPECT_EQ("Tiger\nLion\n", o.str());
}

TEST(VotingFixture, getTests_3){
	istringstream i("1\n\n2\nTiger\nLion\n2 1\n2 1\n2 1\n1 2\n1 2\n1 2\n");
	ostringstream o;
	getTests(i,o);
	EXPECT_EQ("Tiger\nLion\n", o.str());
}

TEST(VotingFixture, getTests_4){
	istringstream i("1\n\n5\nSuperman\nAntman\nBatman\nIronman\nSpiderman\n4 2 3 5 1\n4 3 2 1 5\n3 2 4 5 1\n2 4 5 1 3\n4 2 5 1 3\n3 4 2 5 1\n3 5 1 2 4\n1 2 3 4 5\n5 4 3 2 1");
	ostringstream o;
	getTests(i,o);
	EXPECT_NE("", o.str());
}