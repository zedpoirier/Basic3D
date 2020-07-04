struct PS_INPUT
{
    float4 inPosition : SV_POSITION;
    float3 inColor : COLOR;
    float2 inTexCoord : TEXCOORD;
};

Texture2D objTexture : TEXTURE : register(t0);
SamplerState objSamplerState : SAMPLER : register(s0);

float4 main(PS_INPUT input) : SV_TARGET
{
    float3 color = objTexture.Sample(objSamplerState, input.inTexCoord);
    color *= input.inColor; // mul with vertex color
	return float4(color, 1.0f);
}