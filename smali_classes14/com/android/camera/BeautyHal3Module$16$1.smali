.class Lcom/android/camera/BeautyHal3Module$16$1;
.super Ljava/lang/Object;
.source "BeautyHal3Module.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BeautyHal3Module$16;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/BeautyHal3Module$16;

.field final synthetic val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyHal3Module$16;Lcom/android/camera/opengl/PreviewRenderer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/BeautyHal3Module$16;

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module$16$1;->this$1:Lcom/android/camera/BeautyHal3Module$16;

    iput-object p2, p0, Lcom/android/camera/BeautyHal3Module$16$1;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$16$1;->this$1:Lcom/android/camera/BeautyHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/BeautyHal3Module$16;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$16$1;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1733
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$16$1;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v0}, Lcom/android/camera/opengl/PreviewRenderer;->close()V

    .line 1734
    return-void
.end method
