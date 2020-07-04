cbuffer mycBuffer : register(b0)
{
    float xOffset;
    float yOffset;
};

struct VS_INPUT
{
    float3 inPos : POSITION;
    float3 inColor : COLOR;
    float2 inTexCoord : TEXCOORD;
};

struct VS_OUTPUT
{
    float4 outPosition : SV_POSITION;
    float3 outColor : COLOR;
    float2 outTexCoord : TEXCOORD;
};

VS_OUTPUT main(VS_INPUT input)
{
    VS_OUTPUT output;
    float3 pos = input.inPos;
    //pos.x = sin(input.inTime.x);
    output.outPosition = float4(pos.x, pos.y, pos.z, 1.0f);
    output.outColor = input.inColor;
    output.outTexCoord = input.inTexCoord;
	return output;
}