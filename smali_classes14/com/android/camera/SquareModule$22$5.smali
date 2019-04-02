.class Lcom/android/camera/SquareModule$22$5;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModule$22;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/SquareModule$22;

.field final synthetic val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule$22;Lcom/android/camera/opengl/PreviewRenderer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/SquareModule$22;

    .prologue
    .line 2372
    iput-object p1, p0, Lcom/android/camera/SquareModule$22$5;->this$1:Lcom/android/camera/SquareModule$22;

    iput-object p2, p0, Lcom/android/camera/SquareModule$22$5;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 2375
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$5;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SquareModule$22$5;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 2376
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$5;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SquareModule$22$5;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2377
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$5;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v0}, Lcom/android/camera/opengl/PreviewRenderer;->close()V

    .line 2378
    return-void
.end method
