struct VS_INPUT
{
	float4 position : POSITION;
	float4 color : COLOR;
};

struct VS_OUTPUT
{
	float4 position : SV_POSITION;
	float4 color : COLOR;
};

// IA - VS - RS - PS - OM
VS_OUTPUT VS(VS_INPUT input) 
{
	VS_OUTPUT output;
	output.position = input.position;
	output.color = input.color;

	return output;
}

float4 PS(VS_OUTPUT input) : SV_Target
{
	//삼각형의 색상이 골고루 뜨는 이유는 Resterize 과정에서 보정되어 계산된 값이 넘어오기 때문이다.

	return input.color;
}