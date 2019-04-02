.class Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl$1;
.super Ljava/lang/Object;
.source "ResourceSurfaceTextureImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->setPreviewSize(Lcom/android/camera/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl$1;->this$0:Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->updatePreviewTransform()V

    .line 109
    return-void
.end method
