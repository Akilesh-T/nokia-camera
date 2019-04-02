.class public Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;
.super Ljava/lang/Object;
.source "BeautyPostProcessUnit.java"

# interfaces
.implements Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;


# static fields
.field public static final BEAUTY_LEVEL_TO_VALUE:I = 0x5

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field protected mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

.field protected mBeautyLevel:I

.field protected final mEnablePicSelfie:Z

.field protected mImgData:[B

.field protected final mImgFormat:I

.field protected final mImgHeight:I

.field protected final mImgWidth:I

.field protected final mIsBackCamera:Z

.field protected mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "BeautyPostProcessUnit"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(ZIIIIZ)V
    .locals 1
    .param p1, "isBackCam"    # Z
    .param p2, "imgWidth"    # I
    .param p3, "imgHeight"    # I
    .param p4, "imgFormat"    # I
    .param p5, "beautyLevel"    # I
    .param p6, "enablePicSelfie"    # Z

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    .line 19
    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    .line 26
    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgData:[B

    .line 35
    iput-boolean p1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mIsBackCamera:Z

    .line 36
    iput p2, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgWidth:I

    .line 37
    iput p3, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgHeight:I

    .line 38
    iput p4, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgFormat:I

    .line 39
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mBeautyLevel:I

    .line 40
    iput-boolean p6, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mEnablePicSelfie:Z

    .line 41
    return-void
.end method


# virtual methods
.method public doEnhancement(Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;)[B
    .locals 9
    .param p1, "lockableImageBuffer"    # Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    .prologue
    .line 45
    const/4 v7, 0x0

    .line 47
    .local v7, "res":[B
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->initEngineInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->size()I

    move-result v8

    .line 49
    .local v8, "size":I
    sget-object v0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doEnhancement size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 50
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->getImage()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->inputImageInternal([B)Z

    .line 50
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->processResultImageInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgData:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgHeight:I

    const-string v4, "Beauty_After"

    iget-boolean v5, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mIsBackCamera:Z

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    .line 56
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgData:[B

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgWidth:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object v7

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->releaseEngineInternal()V

    .line 62
    .end local v6    # "i":I
    .end local v8    # "size":I
    :cond_2
    return-object v7
.end method

.method protected initEngineInternal()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 66
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgFormat:I

    invoke-direct/range {v1 .. v6}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;-><init>(JJI)V

    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    .line 70
    :cond_0
    iget-boolean v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mEnablePicSelfie:Z

    if-eqz v1, :cond_4

    .line 71
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    new-instance v1, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgFormat:I

    invoke-direct/range {v1 .. v6}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;-><init>(JJI)V

    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    if-eqz v1, :cond_3

    .line 76
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v7

    .line 74
    goto :goto_0

    .line 76
    :cond_4
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    if-nez v1, :cond_2

    move v0, v7

    goto :goto_0
.end method

.method protected inputImageInternal([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 92
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgData:[B

    .line 96
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected processResultImageInternal()Z
    .locals 14

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v4, 0x4050000000000000L    # 64.0

    .line 100
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgData:[B

    if-nez v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    iget v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgWidth:I

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v8, v2

    .line 103
    .local v8, "alignW":I
    iget v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgHeight:I

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 104
    .local v0, "alignH":I
    mul-int/lit8 v11, v8, 0x40

    .line 105
    .local v11, "pitch0":I
    move v12, v11

    .line 106
    .local v12, "pitch1":I
    mul-int/lit8 v2, v0, 0x40

    mul-int v13, v11, v2

    .line 108
    .local v13, "plane1":I
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgData:[B

    if-eqz v2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mBeautyLevel:I

    invoke-virtual {v1, v2}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->setBeautyLevel(I)V

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    if-eqz v1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    sget v2, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_LEVEL:I

    invoke-virtual {v1, v2}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;->setBokehLevel(I)V

    .line 118
    :cond_3
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgFormat:I

    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgData:[B

    invoke-virtual/range {v1 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->processImage(JJI[B)I

    move-result v9

    .line 119
    .local v9, "doBeauty_ret":I
    sget-object v1, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processHAL1BeautyImage ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    iget-boolean v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mEnablePicSelfie:Z

    if-eqz v1, :cond_4

    .line 121
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgFormat:I

    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgData:[B

    invoke-virtual/range {v1 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;->processImage(JJI[B)I

    move-result v10

    .line 122
    .local v10, "doPicSelfie_ret":I
    sget-object v1, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processHAL1PicSelfieImage ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    .end local v10    # "doPicSelfie_ret":I
    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected releaseEngineInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->release()V

    .line 82
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;->release()V

    .line 86
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    .line 88
    :cond_1
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;->mImgData:[B

    .line 89
    return-void
.end method
