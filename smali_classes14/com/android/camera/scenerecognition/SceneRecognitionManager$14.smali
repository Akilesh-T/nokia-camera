.class Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;
.super Ljava/lang/Object;
.source "SceneRecognitionManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$sceneid:[I


# direct methods
.method constructor <init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;[ILandroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    iput-object p2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$sceneid:[I

    iput-object p3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$Saturationinput:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$Contrastinput:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$Sharpnessinput:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$Exposureinput:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$Rinput:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$Ginput:Landroid/widget/EditText;

    iput-object p9, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$Binput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 27
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$sceneid:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    if-ltz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$sceneid:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    const/16 v25, 0x23

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 515
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1500(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/CameraActivity;

    move-result-object v24

    const-string v25, "error"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    .line 516
    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 570
    :goto_0
    return-void

    .line 519
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$Saturationinput:Landroid/widget/EditText;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 520
    .local v19, "saturation":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$Contrastinput:Landroid/widget/EditText;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 521
    .local v14, "contrast":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$Sharpnessinput:Landroid/widget/EditText;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 522
    .local v22, "sharpness":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$Exposureinput:Landroid/widget/EditText;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 523
    .local v17, "exposure":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$Rinput:Landroid/widget/EditText;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 524
    .local v11, "Rgain":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$Ginput:Landroid/widget/EditText;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 525
    .local v5, "Ggain":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$Binput:Landroid/widget/EditText;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, "Bgain":Ljava/lang/String;
    const/16 v20, -0x1

    .line 527
    .local v20, "saturationInteger":I
    const/4 v15, -0x1

    .line 528
    .local v15, "contrastInteger":I
    const/16 v23, -0x1

    .line 529
    .local v23, "sharpnessInteger":I
    const/16 v18, -0xd

    .line 530
    .local v18, "exposureInteger":I
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 531
    .local v12, "Rgainf":D
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    .line 532
    .local v8, "Ggainf":D
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 533
    .local v6, "Bgainf":D
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_3

    .line 534
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_3

    .line 536
    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 537
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 538
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 539
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 540
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 541
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 542
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 546
    :goto_1
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 547
    .local v10, "RGBGain":Ljava/lang/String;
    if-ltz v20, :cond_2

    const/16 v24, 0xa

    move/from16 v0, v20

    move/from16 v1, v24

    if-gt v0, v1, :cond_2

    if-ltz v15, :cond_2

    const/16 v24, 0xa

    move/from16 v0, v24

    if-gt v15, v0, :cond_2

    if-ltz v23, :cond_2

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_2

    const/16 v24, -0xc

    move/from16 v0, v18

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    const/16 v24, 0xc

    move/from16 v0, v18

    move/from16 v1, v24

    if-gt v0, v1, :cond_2

    const-wide/high16 v24, 0x4010000000000000L    # 4.0

    cmpg-double v24, v12, v24

    if-gtz v24, :cond_2

    const-wide/16 v24, 0x0

    cmpl-double v24, v12, v24

    if-ltz v24, :cond_2

    const-wide/high16 v24, 0x4010000000000000L    # 4.0

    cmpg-double v24, v8, v24

    if-gtz v24, :cond_2

    const-wide/16 v24, 0x0

    cmpl-double v24, v8, v24

    if-ltz v24, :cond_2

    const-wide/high16 v24, 0x4010000000000000L    # 4.0

    cmpg-double v24, v6, v24

    if-gtz v24, :cond_2

    const-wide/16 v24, 0x0

    cmpl-double v24, v6, v24

    if-ltz v24, :cond_2

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1800(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$sceneid:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/camera/scenerecognition/SceneParmeter;

    .line 555
    .local v21, "sceneParmeter":Lcom/android/camera/scenerecognition/SceneParmeter;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/scenerecognition/SceneParmeter;->setmSaturation(Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/camera/scenerecognition/SceneParmeter;->setmContrast(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {v21 .. v22}, Lcom/android/camera/scenerecognition/SceneParmeter;->setmSharpness(Ljava/lang/String;)V

    .line 558
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/scenerecognition/SceneParmeter;->setmExposure(Ljava/lang/String;)V

    .line 559
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/android/camera/scenerecognition/SceneParmeter;->setmAWBRGBGains(Ljava/lang/String;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1800(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->val$sceneid:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1800(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1900(Lcom/android/camera/scenerecognition/SceneRecognitionManager;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 543
    .end local v10    # "RGBGain":Ljava/lang/String;
    .end local v21    # "sceneParmeter":Lcom/android/camera/scenerecognition/SceneParmeter;
    :catch_0
    move-exception v16

    .line 544
    .local v16, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    .line 563
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    .restart local v10    # "RGBGain":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1500(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/CameraActivity;

    move-result-object v24

    const-string v25, "Invalid Scene Parmeter"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    .line 564
    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 567
    .end local v10    # "RGBGain":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1500(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/CameraActivity;

    move-result-object v24

    const-string v25, "Invalid Scene Parmeter"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    .line 568
    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
