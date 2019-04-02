.class Lcom/android/camera/ManualHal3ModuleUI$2;
.super Ljava/lang/Object;
.source "ManualHal3ModuleUI.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualHal3ModuleUI;->loadModuleLayout(Lcom/android/camera/one/OneCameraCharacteristics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualHal3ModuleUI;

.field final synthetic val$cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3ModuleUI;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualHal3ModuleUI;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    iput-object p2, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->val$cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resid"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 204
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ModuleUI;->access$400(Lcom/android/camera/ManualHal3ModuleUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {}, Lcom/android/camera/ManualHal3ModuleUI;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "loadModuleLayout() onInflateFinished() start"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 208
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ModuleUI;->access$600(Lcom/android/camera/ManualHal3ModuleUI;)V

    .line 209
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->val$cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {v1, v2}, Lcom/android/camera/ManualHal3ModuleUI;->access$700(Lcom/android/camera/ManualHal3ModuleUI;Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 210
    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    const v1, 0x7f0f00a8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/CountDownView;

    invoke-static {v2, v1}, Lcom/android/camera/ManualHal3ModuleUI;->access$802(Lcom/android/camera/ManualHal3ModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;

    .line 211
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ModuleUI;->access$800(Lcom/android/camera/ManualHal3ModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v2}, Lcom/android/camera/ManualHal3ModuleUI;->access$900(Lcom/android/camera/ManualHal3ModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 212
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ModuleUI;->access$1000(Lcom/android/camera/ManualHal3ModuleUI;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 213
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ModuleUI;->access$800(Lcom/android/camera/ManualHal3ModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v2}, Lcom/android/camera/ManualHal3ModuleUI;->access$1000(Lcom/android/camera/ManualHal3ModuleUI;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 214
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ModuleUI;->access$1100(Lcom/android/camera/ManualHal3ModuleUI;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ModuleUI;->access$1100(Lcom/android/camera/ManualHal3ModuleUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ModuleUI;->access$1100(Lcom/android/camera/ManualHal3ModuleUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v2}, Lcom/android/camera/ManualHal3ModuleUI;->access$1000(Lcom/android/camera/ManualHal3ModuleUI;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ModuleUI;->access$1200(Lcom/android/camera/ManualHal3ModuleUI;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ModuleUI;->access$800(Lcom/android/camera/ManualHal3ModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v2}, Lcom/android/camera/ManualHal3ModuleUI;->access$1200(Lcom/android/camera/ManualHal3ModuleUI;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/ManualHal3ModuleUI;->access$1302(Lcom/android/camera/ManualHal3ModuleUI;Z)Z

    .line 224
    invoke-static {}, Lcom/android/camera/ManualHal3ModuleUI;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "loadModuleLayout() onInflateFinished() end"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
