.class Lcom/android/camera/PanoramaModule$5;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaModule;->onRemoteShutterPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 1643
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$5;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$5;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaModule;->onShutterButtonClick()V

    .line 1647
    return-void
.end method
