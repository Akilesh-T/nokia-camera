.class public Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;
.super Ljava/lang/Object;
.source "SurfaceTextureWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHeight:I

.field private mSTTimeStamp:J

.field private mSTTransformMatrix:[F

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureId:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 55
    iput v1, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mWidth:I

    .line 56
    iput v1, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mHeight:I

    .line 57
    const/16 v0, -0x3039

    iput v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mTextureId:I

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSTTransformMatrix:[F

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSTTimeStamp:J

    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "surfaceTexId"    # I

    .prologue
    const/4 v1, -0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 55
    iput v1, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mWidth:I

    .line 56
    iput v1, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mHeight:I

    .line 57
    const/16 v0, -0x3039

    iput v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mTextureId:I

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSTTransformMatrix:[F

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSTTimeStamp:J

    .line 65
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 66
    iput p1, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mTextureId:I

    .line 67
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 68
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurface:Landroid/view/Surface;

    .line 69
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBufferTimeStamp()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSTTimeStamp:J

    return-wide v0
.end method

.method public getBufferTransformMatrix()[F
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSTTransformMatrix:[F

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mHeight:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mTextureId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mWidth:I

    return v0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 142
    sget-object v0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->resetSTStatus()V

    .line 144
    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 147
    iput-object v3, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 151
    iput-object v3, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurface:Landroid/view/Surface;

    .line 153
    :cond_1
    iput v2, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mWidth:I

    .line 154
    iput v2, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mHeight:I

    .line 155
    iget v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mTextureId:I

    if-ltz v0, :cond_2

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mTextureId:I

    aput v1, v0, v2

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->deleteTextures([I)V

    .line 157
    const/16 v0, -0x3039

    iput v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mTextureId:I

    .line 159
    :cond_2
    return-void
.end method

.method public resetSTStatus()V
    .locals 2

    .prologue
    .line 137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSTTimeStamp:J

    .line 138
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSTTransformMatrix:[F

    .line 139
    return-void
.end method

.method public setDefaultBufferSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 83
    if-lez p2, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 84
    iget v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mWidth:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mHeight:I

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 85
    sget-object v0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip setDefaultBufferSize w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 82
    goto :goto_0

    :cond_1
    move v0, v2

    .line 83
    goto :goto_1

    .line 88
    :cond_2
    iput p1, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mWidth:I

    .line 89
    iput p2, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mHeight:I

    .line 90
    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_4

    .line 91
    iget v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mTextureId:I

    if-gez v0, :cond_3

    .line 92
    invoke-static {v1}, Lcom/android/camera/pip/opengl/GLUtil;->generateTextureIds(I)[I

    move-result-object v0

    aget v0, v0, v2

    iput v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mTextureId:I

    .line 93
    iget v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mTextureId:I

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->bindPreviewTexure(I)V

    .line 95
    :cond_3
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 96
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurface:Landroid/view/Surface;

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_2
.end method

.method public setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "frameListener"    # Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SurfaceTexure not created, pls call setDefaultBufferSize or use SurfaceTextureWrapper(int surfaceTexId) firstly!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 79
    return-void
.end method

.method public updateTexImage()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 131
    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSTTimeStamp:J

    .line 132
    iget-object v0, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->mSTTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 134
    :cond_0
    return-void
.end method
