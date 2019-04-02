.class Lcom/android/camera/widget/ProTutorialDialogLayout$1;
.super Ljava/lang/Object;
.source "ProTutorialDialogLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/ProTutorialDialogLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/ProTutorialDialogLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$1;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 173
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$1;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v0}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$200(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfirm() with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$1;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v2}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$300(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProTutorialDialogListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$1;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v0}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$300(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProTutorialDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$1;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v0}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$300(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProTutorialDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/widget/ProTutorialDialogLayout$ProTutorialDialogListener;->onConfirm()V

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$1;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {}, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->values()[Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$1;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v2}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$400(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$402(Lcom/android/camera/widget/ProTutorialDialogLayout;Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    .line 184
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$1;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$1;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$400(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$500(Lcom/android/camera/widget/ProTutorialDialogLayout;Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;)V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f01e2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
