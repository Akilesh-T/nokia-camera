.class Lcom/android/camera/ManualHal3ModuleUI$3;
.super Ljava/lang/Object;
.source "ManualHal3ModuleUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualHal3ModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualHal3ModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3ModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualHal3ModuleUI;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/camera/ManualHal3ModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 365
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/ManualHal3ModuleUI;->foldAllOptions()V

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 377
    :goto_0
    return-void

    .line 368
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0, v1}, Lcom/android/camera/ManualHal3ModuleUI;->access$1400(Lcom/android/camera/ManualHal3ModuleUI;Z)V

    goto :goto_0

    .line 371
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0, v1}, Lcom/android/camera/ManualHal3ModuleUI;->access$1500(Lcom/android/camera/ManualHal3ModuleUI;Z)V

    goto :goto_0

    .line 374
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$3;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0, v1}, Lcom/android/camera/ManualHal3ModuleUI;->access$1600(Lcom/android/camera/ManualHal3ModuleUI;Z)V

    goto :goto_0

    .line 366
    :sswitch_data_0
    .sparse-switch
        0x7f0f0139 -> :sswitch_2
        0x7f0f014a -> :sswitch_0
        0x7f0f0152 -> :sswitch_1
    .end sparse-switch
.end method
