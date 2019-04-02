.class Lcom/android/camera/DualSightVideoModule$16$7;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule$16;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/DualSightVideoModule$16;

.field final synthetic val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule$16;Lcom/android/camera/opengl/PreviewRenderer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/DualSightVideoModule$16;

    .prologue
    .line 2073
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$16$7;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iput-object p2, p0, Lcom/android/camera/DualSightVideoModule$16$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$7;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 2077
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$7;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2078
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v0}, Lcom/android/camera/opengl/PreviewRenderer;->close()V

    .line 2079
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$7;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 2080
    return-void
.end method
