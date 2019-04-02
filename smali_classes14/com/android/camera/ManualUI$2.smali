.class Lcom/android/camera/ManualUI$2;
.super Ljava/lang/Object;
.source "ManualUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualUI;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualUI;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/camera/ManualUI$2;->this$0:Lcom/android/camera/ManualUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lcom/android/camera/ManualUI$2;->this$0:Lcom/android/camera/ManualUI;

    invoke-virtual {v0}, Lcom/android/camera/ManualUI;->foldAllOptions()V

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 442
    :goto_0
    return-void

    .line 427
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/ManualUI$2;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0, v1}, Lcom/android/camera/ManualUI;->access$100(Lcom/android/camera/ManualUI;Z)V

    goto :goto_0

    .line 430
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/ManualUI$2;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0, v1}, Lcom/android/camera/ManualUI;->access$200(Lcom/android/camera/ManualUI;Z)V

    goto :goto_0

    .line 433
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/ManualUI$2;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0, v1}, Lcom/android/camera/ManualUI;->access$300(Lcom/android/camera/ManualUI;Z)V

    goto :goto_0

    .line 436
    :sswitch_3
    iget-object v0, p0, Lcom/android/camera/ManualUI$2;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0, v1}, Lcom/android/camera/ManualUI;->access$400(Lcom/android/camera/ManualUI;Z)V

    goto :goto_0

    .line 439
    :sswitch_4
    iget-object v0, p0, Lcom/android/camera/ManualUI$2;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0, v1}, Lcom/android/camera/ManualUI;->access$500(Lcom/android/camera/ManualUI;Z)V

    goto :goto_0

    .line 425
    :sswitch_data_0
    .sparse-switch
        0x7f0f0139 -> :sswitch_2
        0x7f0f014a -> :sswitch_0
        0x7f0f0152 -> :sswitch_1
        0x7f0f015b -> :sswitch_3
        0x7f0f0163 -> :sswitch_4
    .end sparse-switch
.end method
