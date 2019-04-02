.class Lcom/android/camera/ui/watermark/WatermarkViewLayout$3;
.super Ljava/lang/Object;
.source "WatermarkViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setFreeTextInfoData(Lcom/android/camera/watermark/FreeTextInfoData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$3;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 172
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$3;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$500(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 173
    invoke-static {}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Output.post() null!"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$3;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$500(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    .line 178
    .local v1, "width":I
    invoke-static {}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output.post() width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$3;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v4}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$600(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$3;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$500(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 180
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$3;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$600(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$3;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$600(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 182
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 183
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$3;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$500(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$3;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$500(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 185
    :cond_1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 186
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 187
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$3;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$500(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method
