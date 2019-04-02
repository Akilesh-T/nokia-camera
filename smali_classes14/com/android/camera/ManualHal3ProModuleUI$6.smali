.class Lcom/android/camera/ManualHal3ProModuleUI$6;
.super Ljava/lang/Object;
.source "ManualHal3ProModuleUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualHal3ProModuleUI;->updateManualContentUI(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualHal3ProModuleUI;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3ProModuleUI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 745
    iput-object p1, p0, Lcom/android/camera/ManualHal3ProModuleUI$6;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    iput-object p2, p0, Lcom/android/camera/ManualHal3ProModuleUI$6;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/ManualHal3ProModuleUI$6;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI$6;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$6;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI$6;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ManualHal3ProModuleUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    return-void
.end method
