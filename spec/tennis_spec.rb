require "tennis"

describe Tennis do
  let(:tennis) {Tennis.new}

  describe "#current_score" do
    context "New Game" do
      it "Returns a score of Love, Love" do
        expect(tennis.current_score).to eq([0, 0])
      end
    end

    context "Player one scores" do
      it "Returns a score of 15, Love" do
        tennis.player_scores("player_1")
        expect(tennis.current_score).to eq([1, 0])
      end
    end

    context "Player two scores" do
      it "Returns a score of Love, 15" do
        tennis.player_scores("player_2")
        expect(tennis.current_score).to eq([0, 1])
      end
    end

    context "Player one scores twice" do
      it "Returns a score of 30, Love" do
        2.times {tennis.player_scores("player_1")}
        expect(tennis.current_score).to eq([2, 0])
      end
    end
  end
end
