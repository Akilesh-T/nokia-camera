.class Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;
.super Ljava/lang/Object;
.source "WatermarkViewLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/watermark/WatermarkViewLayout;->showEditAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mInputBefore:I

.field private mInputCount:I

.field private mInputStart:I

.field final synthetic this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

.field final synthetic val$countText:Landroid/widget/TextView;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/watermark/WatermarkViewLayout;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    iput-object p2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->val$countText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const v8, 0x7f080299

    .line 280
    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-nez v5, :cond_0

    .line 281
    invoke-static {}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    const-string v6, "afterTextChanged() editText.getLayout() is null, Skip it!"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 298
    :goto_0
    return-void

    .line 284
    :cond_0
    iget v4, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->mInputStart:I

    .line 285
    .local v4, "start":I
    iget v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->mInputStart:I

    iget v6, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->mInputBefore:I

    add-int v0, v5, v6

    .line 286
    .local v0, "before":I
    iget v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->mInputStart:I

    iget v6, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->mInputCount:I

    add-int v1, v5, v6

    .line 287
    .local v1, "end":I
    if-le v0, v1, :cond_1

    .line 288
    move v0, v4

    .line 290
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 291
    .local v2, "lineCount":I
    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getMaxLines()I

    move-result v3

    .line 292
    .local v3, "maxLines":I
    if-le v2, v3, :cond_2

    .line 293
    const-string v5, ""

    invoke-interface {p1, v0, v1, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 294
    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->val$countText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-virtual {v7}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->val$countText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-virtual {v7}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 269
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 273
    iput p2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->mInputStart:I

    .line 274
    iput p3, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->mInputBefore:I

    .line 275
    iput p4, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;->mInputCount:I

    .line 276
    return-void
.end method
