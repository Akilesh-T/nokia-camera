.class Lcom/android/camera/ManualHal3ProModuleUI$3;
.super Ljava/lang/Object;
.source "ManualHal3ProModuleUI.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualHal3ProModuleUI;->loadModuleLayout(Lcom/android/camera/one/OneCameraCharacteristics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualHal3ProModuleUI;

.field final synthetic val$cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3ProModuleUI;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    iput-object p2, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->val$cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

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

    .line 250
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$500(Lcom/android/camera/ManualHal3ProModuleUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-static {}, Lcom/android/camera/ManualHal3ProModuleUI;->access$600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "loadModuleLayout() onInflateFinished() start"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$700(Lcom/android/camera/ManualHal3ProModuleUI;)V

    .line 255
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->val$cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {v1, v2}, Lcom/android/camera/ManualHal3ProModuleUI;->access$800(Lcom/android/camera/ManualHal3ProModuleUI;Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 256
    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    const v1, 0x7f0f00a8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/CountDownView;

    invoke-static {v2, v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$902(Lcom/android/camera/ManualHal3ProModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;

    .line 257
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$900(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v2}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1000(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 258
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1100(Lcom/android/camera/ManualHal3ProModuleUI;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 259
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$900(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v2}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1100(Lcom/android/camera/ManualHal3ProModuleUI;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 260
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1200(Lcom/android/camera/ManualHal3ProModuleUI;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1200(Lcom/android/camera/ManualHal3ProModuleUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1200(Lcom/android/camera/ManualHal3ProModuleUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v2}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1100(Lcom/android/camera/ManualHal3ProModuleUI;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1300(Lcom/android/camera/ManualHal3ProModuleUI;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 266
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1300(Lcom/android/camera/ManualHal3ProModuleUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1300(Lcom/android/camera/ManualHal3ProModuleUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ProModeSeekBar;

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v2}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1100(Lcom/android/camera/ManualHal3ProModuleUI;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/ProModeSeekBar;->setOrientation(IZ)V

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 271
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1400(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 272
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$900(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v2}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1400(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1502(Lcom/android/camera/ManualHal3ProModuleUI;Z)Z

    .line 275
    invoke-static {}, Lcom/android/camera/ManualHal3ProModuleUI;->access$600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "loadModuleLayout() onInflateFinished() end"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
