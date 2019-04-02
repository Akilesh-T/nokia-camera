.class public Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;
.super Ljava/lang/Object;
.source "ArcsoftSmartDenoiseParameter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColorLevel:I

.field private mDenoiseType:I

.field private mLuminLevel:I

.field private mRingLevel:I

.field private mSharpLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRear"    # Z

    .prologue
    const/4 v7, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v5, "0"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mDenoiseType:I

    .line 17
    const-string v5, "50"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mColorLevel:I

    .line 18
    const-string v5, "50"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mLuminLevel:I

    .line 19
    const-string v5, "50"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mSharpLevel:I

    .line 20
    const-string v5, "50"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mRingLevel:I

    .line 24
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 25
    :cond_0
    if-nez p2, :cond_2

    .line 26
    const-string v5, "camera.asdn.key"

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 27
    const-string v5, "camera.asdn.type.front"

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v1, v5, v7

    .line 28
    .local v1, "denoise_type":Ljava/lang/String;
    const-string v5, "camera.asdn.color.front"

    const-string v6, "50"

    invoke-static {v5, v6}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v7

    .line 29
    .local v0, "color_level":Ljava/lang/String;
    const-string v5, "camera.asdn.lumin.front"

    const-string v6, "50"

    invoke-static {v5, v6}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v7

    .line 30
    .local v2, "lumin_level":Ljava/lang/String;
    const-string v5, "camera.asdn.sharp.front"

    const-string v6, "50"

    invoke-static {v5, v6}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v7

    .line 31
    .local v4, "sharp_level":Ljava/lang/String;
    const-string v5, "camera.asdn.ring.front"

    const-string v6, "50"

    invoke-static {v5, v6}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v3, v5, v7

    .line 32
    .local v3, "ring_level":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mDenoiseType:I

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mColorLevel:I

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mLuminLevel:I

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mSharpLevel:I

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mRingLevel:I

    goto/16 :goto_0

    .line 38
    .end local v0    # "color_level":Ljava/lang/String;
    .end local v1    # "denoise_type":Ljava/lang/String;
    .end local v2    # "lumin_level":Ljava/lang/String;
    .end local v3    # "ring_level":Ljava/lang/String;
    .end local v4    # "sharp_level":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b002d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mDenoiseType:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mColorLevel:I

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mLuminLevel:I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mSharpLevel:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mRingLevel:I

    goto/16 :goto_0

    .line 45
    :cond_2
    const-string v5, "camera.asdn.key"

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 46
    const-string v5, "camera.asdn.type.main"

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v1, v5, v7

    .line 47
    .restart local v1    # "denoise_type":Ljava/lang/String;
    const-string v5, "camera.asdn.color.main"

    const-string v6, "50"

    invoke-static {v5, v6}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v7

    .line 48
    .restart local v0    # "color_level":Ljava/lang/String;
    const-string v5, "camera.asdn.lumin.main"

    const-string v6, "50"

    invoke-static {v5, v6}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v7

    .line 49
    .restart local v2    # "lumin_level":Ljava/lang/String;
    const-string v5, "camera.asdn.sharp.main"

    const-string v6, "50"

    invoke-static {v5, v6}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v7

    .line 50
    .restart local v4    # "sharp_level":Ljava/lang/String;
    const-string v5, "camera.asdn.ring.main"

    const-string v6, "50"

    invoke-static {v5, v6}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v3, v5, v7

    .line 51
    .restart local v3    # "ring_level":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mDenoiseType:I

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mColorLevel:I

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mLuminLevel:I

    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mSharpLevel:I

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mRingLevel:I

    goto/16 :goto_0

    .line 57
    .end local v0    # "color_level":Ljava/lang/String;
    .end local v1    # "denoise_type":Ljava/lang/String;
    .end local v2    # "lumin_level":Ljava/lang/String;
    .end local v3    # "ring_level":Ljava/lang/String;
    .end local v4    # "sharp_level":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0033

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mDenoiseType:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b002f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mColorLevel:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mLuminLevel:I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0032

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mSharpLevel:I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mRingLevel:I

    goto/16 :goto_0
.end method


# virtual methods
.method public getColorLevel()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mColorLevel:I

    return v0
.end method

.method public getDenoiseType()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mDenoiseType:I

    return v0
.end method

.method public getLuminLevel()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mLuminLevel:I

    return v0
.end method

.method public getRingLevel()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mRingLevel:I

    return v0
.end method

.method public getSharpLevel()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoiseParameter;->mSharpLevel:I

    return v0
.end method
