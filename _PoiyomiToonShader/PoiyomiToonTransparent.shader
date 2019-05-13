﻿Shader ".poiyomi/Toon/Transparent"
{
    Properties
    {
		[HideInInspector] shader_master_label("<color=#008080>❤ Poiyomi Toon Shader V2.5 ❤</color>", Float) = 0
		[HideInInspector] shader_eable_poi_settings_selection("", Float) = 0

		[HideInInspector] footer_github("linkButton(Github,https://github.com/poiyomi/PoiyomiToonShader)", Float) = 0
		[HideInInspector] footer_discord("linkButton(Discord,https://discord.gg/Ays52PY)", Float) = 0
		[HideInInspector] footer_donate("linkButton(Donate,https://www.paypal.me/poiyomi)", Float) = 0
		[HideInInspector] footer_patreon("linkButton(Patreon,https://www.patreon.com/poiyomi)", Float) = 0

        [HideInInspector] m_mainOptions ("Main", Float) = 0
        _Color ("Color", Color) = (1, 1, 1, 1)
        _Desaturation ("Desaturation", Range(-1, 1)) = 0
        _MainTex ("Texture", 2D) = "white" { }
        [Normal]_BumpMap ("Normal Map", 2D) = "bump" { }
        _BumpScale ("Normal Intensity", Range(0, 10)) = 1
        [HideInInspector]_Clip ("Alpha Cuttoff", Range(0, 1.001)) = 0.0
        [HideInInspector] m_start_mainAdvanced ("Advanced", Float) = 0
        _GlobalPanSpeed("Pan Speed XY", Vector) = (0,0,0,0)
        [Normal]_DetailNormalMap ("Detail Map", 2D) = "bump" { }
        _DetailNormalMapScale ("Detail Intensity", Range(0, 10)) = 1
        [HideInInspector] m_end_mainAdvanced ("Advanced", Float) = 0
        
        [HideInInspector] m_metallicOptions ("Metallic", Float) = 0
        _CubeMap ("Baked CubeMap", Cube) = "" { }
        [Toggle(_)]_SampleWorld ("Force Baked Cubemap", Range(0, 1)) = 0
        _AdditiveClearCoat ("Additive Clear Coat", Range(0, 1)) = 0
        _PurelyAdditive ("Purely Additive", Range(0, 1)) = 0
        _MetallicMap ("Metallic Map", 2D) = "white" { }
        _Metallic ("Metallic", Range(0, 1)) = 0
        _SmoothnessMap ("Smoothness Map", 2D) = "white" { }
        [Toggle(_)]_InvertSmoothness("Invert Smoothness Map",Range(0,1)) = 0
        _Smoothness ("Smoothness", Range(0, 1)) = 0
        
        [HideInInspector] m_matcapOptions ("Matcap / Sphere Textures", Float) = 0
        _Matcap ("Matcap", 2D) = "white" { }
        _MatcapMap ("Matcap Map", 2D) = "white" { }
        _MatcapColor ("Matcap Color", Color) = (1, 1, 1, 1)
        _MatcapStrength ("Matcap Strength", Range(0, 20)) = 1
        _ReplaceWithMatcap ("Replace With Matcap", Range(0, 1)) = 0
        _MultiplyMatcap ("Multiply Matcap", Range(0, 1)) = 0
        _AddMatcap ("Add Matcap", Range(0, 1)) = 0
        
        [HideInInspector] m_outlineOptions ("Outlines", Float) = 0
        _LineWidth ("Outline Width", Float) = 0
        _LineColor ("Outline Color", Color) = (1, 1, 1, 1)
        _OutlineEmission ("Outline Emission", Float) = 0
        _OutlineTexture ("Outline Texture", 2D) = "white" { }
        _OutlineTexturePan ("Outline Texture Pan", Vector) = (0, 0, 0, 0)
        
        [HideInInspector] m_emissionOptions ("Emission", Float) = 0
        [HDR]_EmissionColor ("Emission Color", Color) = (1, 1, 1, 1)
        _EmissionMap ("Emission Map", 2D) = "white" { }
        _EmissionMask ("Emission Mask", 2D) = "white" { }
        _EmissionScrollSpeed ("Emission Scroll Speed", Vector) = (0, 0, 0, 0)
        _EmissionStrength ("Emission Strength", Range(0, 20)) = 0
        
        [HideInInspector] m_start_blinkingEmissionOptions ("Blinking Emission", Float) = 0
        _EmissiveBlink_Min ("Emissive Blink Min", Float) = 1
        _EmissiveBlink_Max ("Emissive Blink Max", Float) = 1
        _EmissiveBlink_Velocity ("Emissive Blink Velocity", Float) = 4
        [HideInInspector] m_end_blinkingEmissionOptions ("Blinking Emission", Float) = 0
        
        [HideInInspector] m_start_scrollingEmissionOptions ("Scrolling Emission", Float) = 0
        [Toggle(_)] _ScrollingEmission ("Enable Scrolling Emission", Float) = 0
        _EmissiveScroll_Direction ("Emissive Scroll Direction", Vector) = (0, -10, 0, 0)
        _EmissiveScroll_Width ("Emissive Scroll Width", Float) = 10
        _EmissiveScroll_Velocity ("Emissive Scroll Velocity", Float) = 10
        _EmissiveScroll_Interval ("Emissive Scroll Interval", Float) = 20
        [HideInInspector] m_end_scrollingEmissionOptions ("Scrolling Emission", Float) = 0
        
        [HideInInspector] m_fakeLightingOptions ("Lighting", Float) = 0
        [NoScaleOffset]_ToonRamp ("Lighting Ramp", 2D) = "white" { }
        _ShadowStrength ("Shadow Strength", Range(0, 1)) = .75
        _ShadowOffset ("Shadow Offset", Range(-1, 1)) = 0
        [Toggle(_)] _ForceLightDirection ("Force Light Direction", Range(0, 1)) = 0
        [Toggle(_)] _ForceShadowStrength ("Force Shadow Strength", Range(0, 1)) = 0
        _LightDirection ("Fake Light Direction", Vector) = (0, 1, 0, 0)
        _MinBrightness ("Min Brightness", Range(0, 1)) = 0
        _MaxDirectionalIntensity ("Max Directional Intensity", Float) = 1
        [NoScaleOffset]_AdditiveRamp ("Additive Ramp", 2D) = "white" { }
        _FlatOrFullAmbientLighting ("Flat or Full Ambient Lighting", Range(0, 1)) = 0
        
        [HideInInspector] m_specularHighlightsOptions ("Specular Highlights", Float) = 0
        _SpecularMap ("Specular Map", 2D) = "white" { }
        _Gloss ("Glossiness", Range(0, 1)) = 0
        _SpecularColor ("Specular Color", Color) = (1, 1, 1, 1)
        _SpecularBias ("Specular Color Bias", Range(0, 1)) = 0
        _SpecularStrength ("Specular Strength", Range(0, 5)) = 0
        [Toggle(_)]_HardSpecular ("Enable Hard Specular", Float) = 0
        _SpecularSize ("Hard Specular Size", Range(0, 1)) = .005

        [HideInInspector] m_panosphereOptions ("Panosphere", Float) = 0
        _PanosphereTexture ("Panoshpere Texture", 2D) = "white" { }
        _PanoMapTexture ("Pano Map Texture", 2D) = "white" { }
        _PanoEmission ("Pano Emission", Range(0,10)) = 0
        _PanoBlend ("Pano Blend", Range(0,1)) = 0
        _PanosphereColor ("Panosphere Color", Color) = (1, 1, 1, 1)
        _PanosphereScroll ("Panosphere Scrolling", Vector) = (0,0,0,0)

        [HideInInspector] m_rimLightOptions ("Rim Lighting", Float) = 0
        _RimLightColor ("Rim Color", Color) = (1, 1, 1, 1)
        _RimWidth ("Rim Width", Range(0, 1)) = 0.8
        _RimStrength ("Rim Emission", Range(0, 20)) = 0
        _RimSharpness ("Rim Sharpness", Range(0, 1)) = .25
        _RimLightColorBias ("Rim Color Bias", Range(0, 1)) = 0
        _RimTex ("Rim Texture", 2D) = "white" { }
        _RimTexPanSpeed ("Rim Texture Pan Speed", Vector) = (0, 0, 0, 0)
        
        [HideInInspector] m_StencilPassOptions ("Stencil", Float) = 0
        [IntRange] _StencilRef ("Stencil Reference Value", Range(0, 255)) = 0
        [IntRange] _StencilReadMaskRef ("Stencil ReadMask Value", Range(0, 255)) = 0
        [IntRange] _StencilWriteMaskRef ("Stencil WriteMask Value", Range(0, 255)) = 0
        [Enum(UnityEngine.Rendering.StencilOp)] _StencilPassOp ("Stencil Pass Op", Float) = 0
        [Enum(UnityEngine.Rendering.StencilOp)] _StencilFailOp ("Stencil Fail Op", Float) = 0
        [Enum(UnityEngine.Rendering.StencilOp)] _StencilZFailOp ("Stencil ZFail Op", Float) = 0
        [Enum(UnityEngine.Rendering.CompareFunction)] _StencilCompareFunction ("Stencil Compare Function", Float) = 8
        
        [HideInInspector] m_start_OutlineStencil ("Outline Stencil", Float) = 0
        [IntRange] _OutlineStencilRef ("Stencil Reference Value", Range(0, 255)) = 0
        [IntRange] _OutlineStencilReadMaskRef ("Stencil ReadMask Value", Range(0, 255)) = 0
        [IntRange] _OutlineStencilWriteMaskRef ("Stencil WriteMask Value", Range(0, 255)) = 0
        [Enum(UnityEngine.Rendering.StencilOp)] _OutlineStencilPassOp ("Stencil Pass Op", Float) = 0
        [Enum(UnityEngine.Rendering.StencilOp)] _OutlineStencilFailOp ("Stencil Fail Op", Float) = 0
        [Enum(UnityEngine.Rendering.StencilOp)] _OutlineStencilZFailOp ("Stencil ZFail Op", Float) = 0
        [Enum(UnityEngine.Rendering.CompareFunction)] _OutlineStencilCompareFunction ("Stencil Compare Function", Float) = 8
        [HideInInspector] m_end_OutlineStencil ("Outline Stencil", Float) = 0
        
        [HideInInspector] m_miscOptions ("Misc", Float) = 0
        [Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull", Float) = 2
        [Enum(UnityEngine.Rendering.CompareFunction)] _ZTest ("ZTest", Float) = 4
        [Enum(UnityEngine.Rendering.BlendMode)] _SourceBlend ("Source Blend", Float) = 5
        [Enum(UnityEngine.Rendering.BlendMode)] _DestinationBlend ("Destination Blend", Float) = 10
        [Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Int) = 0
    }
    
    CustomEditor "PoiToon"
    SubShader
    {
        Tags { "Queue" = "Transparent" "RenderType" = "Transparent" }
        //Blend SrcAlpha OneMinusSrcAlpha
        Blend [_SourceBlend] [_DestinationBlend]
        
        Pass
        {
            Name "MainPass"
            Tags { "LightMode" = "ForwardBase" }
            
            Stencil
            {
                Ref [_StencilRef]
                ReadMask [_StencilReadMaskRef]
                WriteMask [_StencilWriteMaskRef]
                Ref [_StencilRef]
                Comp [_StencilCompareFunction]
                Pass [_StencilPassOp]
                Fail [_StencilFailOp]
                ZFail [_StencilZFailOp]
            }
            ZWrite [_ZWrite] 
            Cull [_Cull]
            ZTest [_ZTest]
            
            CGPROGRAM
            
            #pragma target 3.0
            #pragma vertex vert
            #pragma fragment frag
            #define BINORMAL_PER_FRAGMENT
            #define FORWARD_BASE_PASS
            #define TRANSPARENT
            #define PANOSPHERE
            #include "PoiPass.cginc"
            ENDCG
            
        }
        Pass
        {
            Tags { "LightMode" = "ForwardAdd" }
            Stencil
            {
                Ref [_StencilRef]
                ReadMask [_StencilReadMaskRef]
                WriteMask [_StencilWriteMaskRef]
                Ref [_StencilRef]
                Comp [_StencilCompareFunction]
                Pass [_StencilPassOp]
                Fail [_StencilFailOp]
                ZFail [_StencilZFailOp]
            }
            ZWrite Off  
            Blend One One
            Cull [_Cull]
            ZTest [_ZTest]
            CGPROGRAM
            
            #pragma target 3.0
            #pragma multi_compile DIRECTIONAL POINT SPOT
            #pragma vertex vert
            #pragma fragment frag
            #define TRANSPARENT
            #define PANOSPHERE
            #define BINORMAL_PER_FRAGMENT
            #include "PoiPass.cginc"
            ENDCG
            
        }
        Pass
        {
            Name "Outline"
            Tags { "LightMode" = "ForwardBase" }
            Stencil
            {
                Ref [_OutlineStencilRef]
                ReadMask [_OutlineStencilReadMaskRef]
                WriteMask [_OutlineStencilWriteMaskRef]
                Ref [_OutlineStencilRef]
                Comp [_OutlineStencilCompareFunction]
                Pass [_OutlineStencilPassOp]
                Fail [_OutlineStencilFailOp]
                ZFail [_OutlineStencilZFailOp]
            }
            ZTest [_ZTest]
            ZWrite [_ZWrite] 
            Cull Front
            CGPROGRAM
            
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma only_renderers d3d9 d3d11 glcore gles
            #pragma target 3.0
            #pragma vertex vert
            #pragma fragment frag
            #define TRANSPARENT
            #include "PoiOutlinePass.cginc"
            ENDCG
            
        }
        Pass
        {
            Tags { "LightMode" = "ShadowCaster" }
            Stencil
            {
                Ref [_StencilRef]
                ReadMask [_StencilReadMaskRef]
                WriteMask [_StencilWriteMaskRef]
                Ref [_StencilRef]
                Comp [_StencilCompareFunction]
                Pass [_StencilPassOp]
                Fail [_StencilFailOp]
                ZFail [_StencilZFailOp]
            }
            CGPROGRAM
            
            #pragma target 3.0
            #pragma multi_compile_shadowcaster
            #pragma vertex vertShadowCaster
            #pragma fragment fragShadowCaster
            #define TRANSPARENT
            #include "PoiShadows.cginc"
            ENDCG
            
        }
    }
}
