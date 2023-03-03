# frozen_string_literal: true

RSpec.describe "GET /exercises", type: :request do
  it "returns a list of exercises" do
    get "/exercises"

    expect(last_response).to be_successful
    expect(last_response.content_type).to eq("application/json; charset=utf-8")

    response_body = JSON.parse(last_response.body)

    expect(response_body).to eq([
      { "id" => 1, "name" => "Assisted dip" },
      { "id" => 2, "name" => "Back squat" }
    ])
  end
end
