.class Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;
.super Ljava/lang/Object;
.source "CaptureIntentModuleUI.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/CaptureIntentModuleUI;->loadModuleLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

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
    const/4 v1, 0x0

    .line 139
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    iget-object v2, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    const v0, 0x7f0f00d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$402(Lcom/android/camera/captureintent/CaptureIntentModuleUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 142
    iget-object v2, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    const v0, 0x7f0f00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    invoke-static {v2, v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$102(Lcom/android/camera/captureintent/CaptureIntentModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;

    .line 143
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$100(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v2}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$500(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$600(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$700(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)V

    .line 147
    iget-object v2, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    const v0, 0x7f0f021e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$802(Lcom/android/camera/captureintent/CaptureIntentModuleUI;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 148
    iget-object v2, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    const v0, 0x7f0f021f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$902(Lcom/android/camera/captureintent/CaptureIntentModuleUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1000(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$100(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v2}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1000(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 153
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1100(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1100(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1000(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)I

    move-result v0

    const/16 v3, 0xb4

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1000(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$000(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$100(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$000(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 158
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$000(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$300(Lcom/android/camera/captureintent/CaptureIntentModuleUI;Landroid/graphics/RectF;)V

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$600(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1200(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1300(Lcom/android/camera/captureintent/CaptureIntentModuleUI;Z)V

    .line 164
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 153
    goto :goto_0
.end method
