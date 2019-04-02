.class public Lcom/android/camera/mpo/WriteMpoFile;
.super Ljava/lang/Object;
.source "WriteMpoFile.java"


# static fields
.field public static final MPO_TYPE_MFI_BOKEH_CALIBRATION:I = 0x30002

.field public static final MPO_TYPE_MFI_BOKEH_DEPTH:I = 0x30001

.field public static final MPO_TYPE_MFI_NONE:I

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field mMpo:Lcom/android/camera/mpo/MpoData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "WriteMpoFile"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/mpo/WriteMpoFile;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/android/camera/mpo/MpoData;

    invoke-direct {v0}, Lcom/android/camera/mpo/MpoData;-><init>()V

    iput-object v0, p0, Lcom/android/camera/mpo/WriteMpoFile;->mMpo:Lcom/android/camera/mpo/MpoData;

    .line 23
    return-void
.end method

.method private addSubImageData([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "format"    # I

    .prologue
    .line 77
    new-instance v0, Lcom/android/camera/mpo/MpoImageData;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/camera/mpo/MpoImageData;-><init>([BILjava/nio/ByteOrder;)V

    .line 78
    .local v0, "image":Lcom/android/camera/mpo/MpoImageData;
    iget-object v1, p0, Lcom/android/camera/mpo/WriteMpoFile;->mMpo:Lcom/android/camera/mpo/MpoData;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/camera/mpo/WriteMpoFile;->mMpo:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v1, v0}, Lcom/android/camera/mpo/MpoData;->addAuxiliaryMpoImage(Lcom/android/camera/mpo/MpoImageData;)V

    .line 81
    :cond_0
    return-void
.end method

.method private setMpoType(J)V
    .locals 1
    .param p1, "type"    # J

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/mpo/WriteMpoFile;->mMpo:Lcom/android/camera/mpo/MpoData;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/camera/mpo/WriteMpoFile;->mMpo:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/mpo/MpoData;->setMpoType(J)V

    .line 47
    :cond_0
    return-void
.end method

.method private setPrimaryImageData([BLcom/android/camera/mpo/Bokeh_Info;)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "info"    # Lcom/android/camera/mpo/Bokeh_Info;

    .prologue
    .line 49
    new-instance v9, Lcom/android/camera/mpo/MpoImageData;

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v9, p1, v4, v5}, Lcom/android/camera/mpo/MpoImageData;-><init>([BILjava/nio/ByteOrder;)V

    .line 50
    .local v9, "image":Lcom/android/camera/mpo/MpoImageData;
    iget-object v4, p0, Lcom/android/camera/mpo/WriteMpoFile;->mMpo:Lcom/android/camera/mpo/MpoData;

    if-eqz v4, :cond_0

    .line 51
    iget-object v4, p0, Lcom/android/camera/mpo/WriteMpoFile;->mMpo:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v4, v9}, Lcom/android/camera/mpo/MpoData;->setPrimaryMpoImage(Lcom/android/camera/mpo/MpoImageData;)V

    .line 53
    if-eqz p2, :cond_0

    .line 54
    new-instance v0, Lcom/android/camera/mpo/MpoTag;

    sget v4, Lcom/android/camera/mpo/MpoInterface;->TAG_BOKEH_FOV:I

    int-to-short v1, v4

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/mpo/MpoTag;-><init>(SSIIZ)V

    .line 56
    .local v0, "tagFov":Lcom/android/camera/mpo/MpoTag;
    iget-wide v4, p2, Lcom/android/camera/mpo/Bokeh_Info;->mFov:J

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/mpo/MpoTag;->setValue(J)Z

    .line 57
    invoke-virtual {v9, v0}, Lcom/android/camera/mpo/MpoImageData;->addTag(Lcom/android/camera/mpo/MpoTag;)Lcom/android/camera/mpo/MpoTag;

    .line 59
    new-instance v1, Lcom/android/camera/mpo/MpoTag;

    sget v4, Lcom/android/camera/mpo/MpoInterface;->TAG_BOKEH_BLUE_LEVEL:I

    int-to-short v2, v4

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/mpo/MpoTag;-><init>(SSIIZ)V

    .line 61
    .local v1, "tagBlurLevel":Lcom/android/camera/mpo/MpoTag;
    iget-wide v4, p2, Lcom/android/camera/mpo/Bokeh_Info;->mBlurLevel:J

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/mpo/MpoTag;->setValue(J)Z

    .line 62
    invoke-virtual {v9, v1}, Lcom/android/camera/mpo/MpoImageData;->addTag(Lcom/android/camera/mpo/MpoTag;)Lcom/android/camera/mpo/MpoTag;

    .line 64
    new-instance v2, Lcom/android/camera/mpo/MpoTag;

    sget v4, Lcom/android/camera/mpo/MpoInterface;->TAG_BOKEH_ORIENTATION:I

    int-to-short v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/mpo/MpoTag;-><init>(SSIIZ)V

    .line 66
    .local v2, "tagOrientation":Lcom/android/camera/mpo/MpoTag;
    iget-wide v4, p2, Lcom/android/camera/mpo/Bokeh_Info;->mOrientation:J

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/mpo/MpoTag;->setValue(J)Z

    .line 67
    invoke-virtual {v9, v2}, Lcom/android/camera/mpo/MpoImageData;->addTag(Lcom/android/camera/mpo/MpoTag;)Lcom/android/camera/mpo/MpoTag;

    .line 69
    new-instance v3, Lcom/android/camera/mpo/MpoTag;

    sget v4, Lcom/android/camera/mpo/MpoInterface;->TAG_BOKEH_TOUCH_POINT:I

    int-to-short v4, v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/mpo/MpoTag;-><init>(SSIIZ)V

    .line 71
    .local v3, "touchPoint":Lcom/android/camera/mpo/MpoTag;
    iget-wide v4, p2, Lcom/android/camera/mpo/Bokeh_Info;->mTouchY:J

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    iget-wide v6, p2, Lcom/android/camera/mpo/Bokeh_Info;->mTouchX:J

    or-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/mpo/MpoTag;->setValue(J)Z

    .line 72
    invoke-virtual {v9, v3}, Lcom/android/camera/mpo/MpoImageData;->addTag(Lcom/android/camera/mpo/MpoTag;)Lcom/android/camera/mpo/MpoTag;

    .line 75
    .end local v0    # "tagFov":Lcom/android/camera/mpo/MpoTag;
    .end local v1    # "tagBlurLevel":Lcom/android/camera/mpo/MpoTag;
    .end local v2    # "tagOrientation":Lcom/android/camera/mpo/MpoTag;
    .end local v3    # "touchPoint":Lcom/android/camera/mpo/MpoTag;
    :cond_0
    return-void
.end method


# virtual methods
.method public writeFile(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;)I
    .locals 4
    .param p1, "info"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 26
    invoke-static {p2}, Lcom/android/camera/Storage;->createDirectoryIfNeeded(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 27
    sget-object v1, Lcom/android/camera/mpo/WriteMpoFile;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create parent directory for file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/android/camera/mpo/WriteMpoFile;->mMpo:Lcom/android/camera/mpo/MpoData;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 32
    iget-wide v0, p1, Lcom/android/camera/mpo/Bokeh_Info;->mBokehType:J

    invoke-direct {p0, v0, v1}, Lcom/android/camera/mpo/WriteMpoFile;->setMpoType(J)V

    .line 34
    iget-object v0, p1, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/mpo/WriteMpoFile;->addSubImageData([BI)V

    .line 35
    iget-object v0, p1, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/mpo/WriteMpoFile;->addSubImageData([BI)V

    .line 36
    iget-object v0, p1, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    invoke-direct {p0, v0, p1}, Lcom/android/camera/mpo/WriteMpoFile;->setPrimaryImageData([BLcom/android/camera/mpo/Bokeh_Info;)V

    .line 38
    iget-object v0, p0, Lcom/android/camera/mpo/WriteMpoFile;->mMpo:Lcom/android/camera/mpo/MpoData;

    invoke-static {v0, p2}, Lcom/android/camera/mpo/MpoInterface;->writeMpo(Lcom/android/camera/mpo/MpoData;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
