# frozen_string_literal: true

RSpec.describe "POST /exercises", type: :request do
  subject(:create_exercise) do
    post "/exercises", params
  end

  context "when params are valid" do
    let(:params) do
      { 
        name: "Assisted dip",
        link: "link",
        notes: "notes",
        substitution: "Dead lift"
      }
    end

    let(:expected_response) do
      { 
        name: "Assisted dip",
        link: "link",
        notes: "notes",
        substitution: "Dead lift"
      }
    end

    it "returns status 200" do
      create_exercise
      expect(last_response.status).to eq(200)
    end

    it "returns exercise" do
      create_exercise
      expect(last_response.body).to eq(expected_response.to_json)
    end
  end

  context "when params are invalid" do
    let(:params) { {} }

    let(:expected_response) do
      {
        errors: {
          name: ["is missing"],
          link: ["is missing"],
          notes: ["is missing"],
          substitution: ["is missing"]
        }
      }
    end

    it "returns status 422" do
      create_exercise
      expect(last_response.status).to eq(422)
    end

    it "returns error message" do
      create_exercise
      expect(last_response.body).to eq(expected_response.to_json)
    end
  end
end