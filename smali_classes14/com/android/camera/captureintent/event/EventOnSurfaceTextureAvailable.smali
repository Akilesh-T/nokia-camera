.class public Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;
.super Ljava/lang/Object;
.source "EventOnSurfaceTextureAvailable.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/Event;


# instance fields
.field private final mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 28
    return-void
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method
