.class Lcom/android/camera/DualSightPhotoModule$14$2;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule$14;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/DualSightPhotoModule$14;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/DualSightPhotoModule$14;

    .prologue
    .line 2193
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$14$2;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$2;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14$2;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 2197
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$2;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14$2;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2198
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$2;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/opengl/PreviewRenderer;->close()V

    .line 2199
    return-void
.end method
