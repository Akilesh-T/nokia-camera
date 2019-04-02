.class public Lcom/android/camera/opengl/render/BasicRender;
.super Ljava/lang/Object;
.source "BasicRender.java"


# static fields
.field private static final INTERVALS:I = 0x12c

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mDrawFrameCount:I

.field private mDrawStartTime:J

.field protected mProgramHandler:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BasicRender"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/render/BasicRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "vertex_shader"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fragment_shader"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "attribLocation"    # [Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/opengl/render/BasicRender;->mDrawFrameCount:I

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/opengl/render/BasicRender;->mDrawStartTime:J

    .line 22
    invoke-static {p1, p2, p3}, Lcom/android/camera/opengl/GLUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/BasicRender;->mProgramHandler:I

    .line 23
    const-string v0, "BasicRender after mProgramHandler created"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected debugFrameRate(Lcom/android/camera/debug/Log$Tag;)V
    .locals 8
    .param p1, "tag"    # Lcom/android/camera/debug/Log$Tag;

    .prologue
    .line 36
    iget v3, p0, Lcom/android/camera/opengl/render/BasicRender;->mDrawFrameCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/camera/opengl/render/BasicRender;->mDrawFrameCount:I

    .line 37
    iget v3, p0, Lcom/android/camera/opengl/render/BasicRender;->mDrawFrameCount:I

    rem-int/lit16 v3, v3, 0x12c

    if-nez v3, :cond_1

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 39
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/android/camera/opengl/render/BasicRender;->mDrawStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 40
    iget-wide v4, p0, Lcom/android/camera/opengl/render/BasicRender;->mDrawStartTime:J

    sub-long v4, v0, v4

    long-to-int v2, v4

    .line 41
    .local v2, "intervals":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Wrapping-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][Preview] Drawing frame, fps = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/opengl/render/BasicRender;->mDrawFrameCount:I

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    int-to-float v5, v2

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in last "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " millisecond."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 45
    .end local v2    # "intervals":I
    :cond_0
    iput-wide v0, p0, Lcom/android/camera/opengl/render/BasicRender;->mDrawStartTime:J

    .line 46
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/opengl/render/BasicRender;->mDrawFrameCount:I

    .line 48
    .end local v0    # "currentTime":J
    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/opengl/render/BasicRender;->mProgramHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 28
    return-void
.end method
