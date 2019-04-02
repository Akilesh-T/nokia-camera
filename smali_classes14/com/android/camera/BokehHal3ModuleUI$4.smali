.class Lcom/android/camera/BokehHal3ModuleUI$4;
.super Ljava/lang/Object;
.source "BokehHal3ModuleUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehHal3ModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehHal3ModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3ModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI$4;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$4;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehHal3ModuleUI;->foldAllOptions()V

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 298
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$4;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/BokehHal3ModuleUI;->access$1700(Lcom/android/camera/BokehHal3ModuleUI;Z)V

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x7f0f0141
        :pswitch_0
    .end packed-switch
.end method
