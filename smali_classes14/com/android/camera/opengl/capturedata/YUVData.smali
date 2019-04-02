.class public Lcom/android/camera/opengl/capturedata/YUVData;
.super Ljava/lang/Object;
.source "YUVData.java"


# instance fields
.field byteBuf:[B

.field pts:J


# direct methods
.method public constructor <init>(J[B)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "byteBuf"    # [B

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/android/camera/opengl/capturedata/YUVData;->pts:J

    .line 13
    iput-object p3, p0, Lcom/android/camera/opengl/capturedata/YUVData;->byteBuf:[B

    .line 14
    return-void
.end method


# virtual methods
.method public getByte()[B
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/YUVData;->byteBuf:[B

    return-object v0
.end method

.method public getPts()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/android/camera/opengl/capturedata/YUVData;->pts:J

    return-wide v0
.end method
