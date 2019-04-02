.class public Lcom/android/camera/burst/SurfaceTextureContainer;
.super Ljava/lang/Object;
.source "SurfaceTextureContainer.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# instance fields
.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/burst/SurfaceTextureContainer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 34
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/camera/burst/SurfaceTextureContainer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/burst/SurfaceTextureContainer;->mSurface:Landroid/view/Surface;

    .line 35
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/burst/SurfaceTextureContainer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 48
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/burst/SurfaceTextureContainer;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/burst/SurfaceTextureContainer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method
