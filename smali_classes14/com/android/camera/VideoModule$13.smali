.class Lcom/android/camera/VideoModule$13;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoModule;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/android/camera/VideoModule$13;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/camera/VideoModule$13;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2700(Lcom/android/camera/VideoModule;)V

    .line 1333
    iget-object v0, p0, Lcom/android/camera/VideoModule$13;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2800(Lcom/android/camera/VideoModule;)V

    .line 1334
    return-void
.end method
