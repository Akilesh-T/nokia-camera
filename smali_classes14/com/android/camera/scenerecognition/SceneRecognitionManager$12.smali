.class Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;
.super Ljava/lang/Object;
.source "SceneRecognitionManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/scenerecognition/SceneRecognitionManager;->showSetSceneParmeterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

.field final synthetic val$Binput:Landroid/widget/EditText;

.field final synthetic val$Contrastinput:Landroid/widget/EditText;

.field final synthetic val$Exposureinput:Landroid/widget/EditText;

.field final synthetic val$Ginput:Landroid/widget/EditText;

.field final synthetic val$Rinput:Landroid/widget/EditText;

.field final synthetic val$Saturationinput:Landroid/widget/EditText;

.field final synthetic val$Sharpnessinput:Landroid/widget/EditText;

.field final synthetic val$mSceneParmeterText:Landroid/widget/TextView;

.field final synthetic val$sceneid:[I


# direct methods
.method constructor <init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;[ILandroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    iput-object p2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$sceneid:[I

    iput-object p3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$mSceneParmeterText:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$Saturationinput:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$Contrastinput:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$Sharpnessinput:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$Exposureinput:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$Rinput:Landroid/widget/EditText;

    iput-object p9, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$Ginput:Landroid/widget/EditText;

    iput-object p10, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$Binput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 481
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$sceneid:[I

    aput p3, v2, v4

    .line 482
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1800(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/scenerecognition/SceneParmeter;

    .line 483
    .local v0, "currentScene":Lcom/android/camera/scenerecognition/SceneParmeter;
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$mSceneParmeterText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneParmeter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$Saturationinput:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneParmeter;->getSaturation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$Contrastinput:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneParmeter;->getContrast()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$Sharpnessinput:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneParmeter;->getSharpness()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$Exposureinput:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneParmeter;->getExposure()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 488
    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneParmeter;->getAWBRGBGains()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "rgbValueString":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$Rinput:Landroid/widget/EditText;

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$Ginput:Landroid/widget/EditText;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;->val$Binput:Landroid/widget/EditText;

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 492
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
