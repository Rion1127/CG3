#include "BasicShaderHeader.hlsli"

[maxvertexcount(3)]
void main(
	triangle VSOutput input[3] : SV_POSITION,
	//inout TriangleStream< GSOutput > output
	inout TriangleStream<GSOutput> output
)
{
    GSOutput element;
    for (uint i = 0; i < 3; i++)
    {
        element.svpos = input[i].svpos;
        element.normal = input[i].normal;
        element.uv = input[i].uv * 2.0f;
        output.Append(element);
    }
    
  //  for (uint i = 0; i < 3; i++)
  //  {
  //      GSOutput element;
  //      element.svpos = input[i].svpos;
  //      element.normal = input[i].normal;
  //      element.uv = input[i].uv;
  //      output.Append(element);
    ////�����̏I�_
  //      if (i == 2)
  //      {
	//	//+1����Ƃ��ӂ��̂ōŏ��ɖ߂�
  //          element.svpos = input[0].svpos;
  //          element.normal = input[0].normal;
  //          element.uv = input[0].uv;
  //      }
  //      else
  //      {
  //          element.svpos = input[i + 1].svpos;
  //          element.normal = input[i + 1].normal;
  //          element.uv = input[i + 1].uv;
  //      }
  //      output.Append(element);
  //      //���݂̃X�g���b�v���I�����A���̃X�g���b�v���J�n����
  //      output.RestartStrip();
  //  }
	
    
}