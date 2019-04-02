.class Lcom/android/camera/ManualProModeUI$4;
.super Ljava/lang/Object;
.source "ManualProModeUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualProModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualProModeUI;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualProModeUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0202c1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 536
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-virtual {v0}, Lcom/android/camera/ManualProModeUI;->foldAllOptions()V

    .line 537
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 539
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0800d9

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ManualProModeUI;->access$400(Lcom/android/camera/ManualProModeUI;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$500(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v1

    invoke-static {v0, v1, v3, v4}, Lcom/android/camera/ManualProModeUI;->access$600(Lcom/android/camera/ManualProModeUI;Lcom/android/camera/ui/ProModeSeekBar;ZZ)V

    .line 541
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$700(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$700(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 544
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0800dc

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ManualProModeUI;->access$400(Lcom/android/camera/ManualProModeUI;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$800(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v1

    invoke-static {v0, v1, v3, v4}, Lcom/android/camera/ManualProModeUI;->access$600(Lcom/android/camera/ManualProModeUI;Lcom/android/camera/ui/ProModeSeekBar;ZZ)V

    .line 546
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$900(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$900(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 549
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0800dd

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ManualProModeUI;->access$400(Lcom/android/camera/ManualProModeUI;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$1000(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v1

    invoke-static {v0, v1, v3, v4}, Lcom/android/camera/ManualProModeUI;->access$600(Lcom/android/camera/ManualProModeUI;Lcom/android/camera/ui/ProModeSeekBar;ZZ)V

    .line 551
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$1100(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$1100(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 554
    :sswitch_3
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0800db

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ManualProModeUI;->access$400(Lcom/android/camera/ManualProModeUI;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$1200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v1

    invoke-static {v0, v1, v3, v4}, Lcom/android/camera/ManualProModeUI;->access$600(Lcom/android/camera/ManualProModeUI;Lcom/android/camera/ui/ProModeSeekBar;ZZ)V

    .line 556
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$1300(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$1300(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 559
    :sswitch_4
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0800de

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ManualProModeUI;->access$400(Lcom/android/camera/ManualProModeUI;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$1400(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v1

    invoke-static {v0, v1, v3, v4}, Lcom/android/camera/ManualProModeUI;->access$600(Lcom/android/camera/ManualProModeUI;Lcom/android/camera/ui/ProModeSeekBar;ZZ)V

    .line 561
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$1500(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$1500(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 564
    :sswitch_5
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0800da

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ManualProModeUI;->access$400(Lcom/android/camera/ManualProModeUI;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$1600(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v1

    invoke-static {v0, v1, v3, v4}, Lcom/android/camera/ManualProModeUI;->access$600(Lcom/android/camera/ManualProModeUI;Lcom/android/camera/ui/ProModeSeekBar;ZZ)V

    .line 566
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$1700(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$1700(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 569
    :sswitch_6
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f08027d

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ManualProModeUI;->access$400(Lcom/android/camera/ManualProModeUI;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$1800(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v1

    invoke-static {v0, v1, v3, v4}, Lcom/android/camera/ManualProModeUI;->access$600(Lcom/android/camera/ManualProModeUI;Lcom/android/camera/ui/ProModeSeekBar;ZZ)V

    .line 571
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$1900(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$1900(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI$4;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v1}, Lcom/android/camera/ManualProModeUI;->access$200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 537
    :sswitch_data_0
    .sparse-switch
        0x7f0f0168 -> :sswitch_2
        0x7f0f016b -> :sswitch_1
        0x7f0f016e -> :sswitch_5
        0x7f0f0171 -> :sswitch_4
        0x7f0f0174 -> :sswitch_0
        0x7f0f0177 -> :sswitch_3
        0x7f0f017a -> :sswitch_6
    .end sparse-switch
.end method
