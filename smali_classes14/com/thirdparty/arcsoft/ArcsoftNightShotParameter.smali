.class public Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;
.super Ljava/lang/Object;
.source "ArcsoftNightShotParameter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIntensity:I

.field private mLightIntensity:I

.field private mNeedSharp:Z

.field private mSaturation:I

.field private mSharpenIntensity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRear"    # Z
    .param p3, "imageType"    # Lcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v7, "32"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mSaturation:I

    .line 15
    const-string v7, "60"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mLightIntensity:I

    .line 16
    const-string v7, "5"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mIntensity:I

    .line 17
    iput-boolean v6, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mNeedSharp:Z

    .line 18
    const-string v7, "40"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mSharpenIntensity:I

    .line 22
    if-nez p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 23
    :cond_0
    if-nez p2, :cond_3

    .line 24
    const-string v7, "camera.ans.key"

    const-string v8, "0"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 25
    const-string v7, "camera.ans.int.front"

    const-string v8, "5"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v0, v7, v6

    .line 26
    .local v0, "intensity":Ljava/lang/String;
    const-string v7, "camera.ans.l_int.front"

    const-string v8, "60"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v1, v7, v6

    .line 27
    .local v1, "light_intensity":Ljava/lang/String;
    const-string v7, "camera.ans.sat.front"

    const-string v8, "32"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v3, v7, v6

    .line 28
    .local v3, "saturation":Ljava/lang/String;
    const-string v7, "camera.ans.sharpe.front"

    const-string v8, "0"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v2, v7, v6

    .line 29
    .local v2, "need_sharpness":Ljava/lang/String;
    const-string v7, "camera.ans.s_int.front"

    const-string v8, "40"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v4, v7, v6

    .line 30
    .local v4, "sharpen_intensity":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mSaturation:I

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mIntensity:I

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mLightIntensity:I

    .line 33
    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_1
    iput-boolean v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mNeedSharp:Z

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mSharpenIntensity:I

    goto/16 :goto_0

    :cond_1
    move v5, v6

    .line 33
    goto :goto_1

    .line 36
    .end local v0    # "intensity":Ljava/lang/String;
    .end local v1    # "light_intensity":Ljava/lang/String;
    .end local v2    # "need_sharpness":Ljava/lang/String;
    .end local v3    # "saturation":Ljava/lang/String;
    .end local v4    # "sharpen_intensity":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mSaturation:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mIntensity:I

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mLightIntensity:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mNeedSharp:Z

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mSharpenIntensity:I

    goto/16 :goto_0

    .line 43
    :cond_3
    sget-object v7, Lcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;->DC_COLOR:Lcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;

    if-ne p3, v7, :cond_5

    .line 44
    const-string v7, "persist.ans.m_rgb.int"

    const-string v8, "8"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .restart local v0    # "intensity":Ljava/lang/String;
    const-string v7, "persist.ans.m_rgb.l_int"

    const-string v8, "20"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .restart local v1    # "light_intensity":Ljava/lang/String;
    const-string v7, "persist.ans.m_rgb.sat"

    const-string v8, "40"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .restart local v3    # "saturation":Ljava/lang/String;
    const-string v7, "persist.ans.m_rgb.sharpe"

    const-string v8, "1"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .restart local v2    # "need_sharpness":Ljava/lang/String;
    const-string v7, "persist.ans.m_rgb.s_int"

    const-string v8, "40"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .restart local v4    # "sharpen_intensity":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mSaturation:I

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mIntensity:I

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mLightIntensity:I

    .line 52
    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_2
    iput-boolean v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mNeedSharp:Z

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mSharpenIntensity:I

    goto/16 :goto_0

    :cond_4
    move v5, v6

    .line 52
    goto :goto_2

    .line 54
    .end local v0    # "intensity":Ljava/lang/String;
    .end local v1    # "light_intensity":Ljava/lang/String;
    .end local v2    # "need_sharpness":Ljava/lang/String;
    .end local v3    # "saturation":Ljava/lang/String;
    .end local v4    # "sharpen_intensity":Ljava/lang/String;
    :cond_5
    sget-object v7, Lcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;->DC_MONO:Lcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;

    if-ne p3, v7, :cond_7

    .line 55
    const-string v7, "persist.ans.m_mo.int"

    const-string v8, "2"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .restart local v0    # "intensity":Ljava/lang/String;
    const-string v7, "persist.ans.m_mo.l_int"

    const-string v8, "10"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .restart local v1    # "light_intensity":Ljava/lang/String;
    const-string v7, "persist.ans.m_mo.sat"

    const-string v8, "32"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .restart local v3    # "saturation":Ljava/lang/String;
    const-string v7, "persist.ans.m_mo.sharpe"

    const-string v8, "1"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .restart local v2    # "need_sharpness":Ljava/lang/String;
    const-string v7, "persist.ans.m_mo.s_int"

    const-string v8, "40"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .restart local v4    # "sharpen_intensity":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mSaturation:I

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mIntensity:I

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mLightIntensity:I

    .line 63
    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_3
    iput-boolean v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mNeedSharp:Z

    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mSharpenIntensity:I

    goto/16 :goto_0

    :cond_6
    move v5, v6

    .line 63
    goto :goto_3

    .line 66
    .end local v0    # "intensity":Ljava/lang/String;
    .end local v1    # "light_intensity":Ljava/lang/String;
    .end local v2    # "need_sharpness":Ljava/lang/String;
    .end local v3    # "saturation":Ljava/lang/String;
    .end local v4    # "sharpen_intensity":Ljava/lang/String;
    :cond_7
    const-string v7, "camera.ans.key"

    const-string v8, "0"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 67
    const-string v7, "camera.ans.int.main"

    const-string v8, "5"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v0, v7, v6

    .line 68
    .restart local v0    # "intensity":Ljava/lang/String;
    const-string v7, "camera.ans.l_int.main"

    const-string v8, "60"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v1, v7, v6

    .line 69
    .restart local v1    # "light_intensity":Ljava/lang/String;
    const-string v7, "camera.ans.sat.main"

    const-string v8, "32"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v3, v7, v6

    .line 70
    .restart local v3    # "saturation":Ljava/lang/String;
    const-string v7, "camera.ans.sharpe.main"

    const-string v8, "0"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v2, v7, v6

    .line 71
    .restart local v2    # "need_sharpness":Ljava/lang/String;
    const-string v7, "camera.ans.s_int.main"

    const-string v8, "40"

    invoke-static {v7, v8}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v4, v7, v6

    .line 72
    .restart local v4    # "sharpen_intensity":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mSaturation:I

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mIntensity:I

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mLightIntensity:I

    .line 75
    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_4
    iput-boolean v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mNeedSharp:Z

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mSharpenIntensity:I

    goto/16 :goto_0

    :cond_8
    move v5, v6

    .line 75
    goto :goto_4

    .line 78
    .end local v0    # "intensity":Ljava/lang/String;
    .end local v1    # "light_intensity":Ljava/lang/String;
    .end local v2    # "need_sharpness":Ljava/lang/String;
    .end local v3    # "saturation":Ljava/lang/String;
    .end local v4    # "sharpen_intensity":Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mSaturation:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mIntensity:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mLightIntensity:I

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mNeedSharp:Z

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mSharpenIntensity:I

    goto/16 :goto_0
.end method


# virtual methods
.method public getIntensity()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mIntensity:I

    return v0
.end method

.method public getLightIntensity()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mLightIntensity:I

    return v0
.end method

.method public getSaturation()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mSaturation:I

    return v0
.end method

.method public getSharpenIntensity()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mSharpenIntensity:I

    return v0
.end method

.method public isNeedSharp()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/thirdparty/arcsoft/ArcsoftNightShotParameter;->mNeedSharp:Z

    return v0
.end method
