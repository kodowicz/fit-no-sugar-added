# frozen_string_literal: true

RSpec.describe "GET /exercises/:id", type: :request do
  it "returns an exercise" do
    get "/exercises/1"

    expect(last_response).to be_successful
    expect(last_response.content_type).to eq("application/json; charset=utf-8")

    response_body = JSON.parse(last_response.body)

    expect(response_body).to eq(
      { "id" => 1, "name" => "Assisted dip" }
    )
  end
end
