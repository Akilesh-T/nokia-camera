.class Lcom/android/camera/PanoramaHal3ModuleUI$3;
.super Ljava/lang/Object;
.source "PanoramaHal3ModuleUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaHal3ModuleUI;->showPanoRecordingUI(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaHal3ModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaHal3ModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaHal3ModuleUI;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3ModuleUI$3;->this$0:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI$3;->this$0:Lcom/android/camera/PanoramaHal3ModuleUI;

    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoramaHal3ModuleUI;->showHintMessage(I)V

    .line 187
    return-void
.end method
