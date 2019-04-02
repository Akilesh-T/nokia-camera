.class Lcom/android/camera/ManualModule$11;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualModule;->onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualModule;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualModule;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 2007
    iput-object p1, p0, Lcom/android/camera/ManualModule$11;->this$0:Lcom/android/camera/ManualModule;

    iput-object p2, p0, Lcom/android/camera/ManualModule$11;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/android/camera/ManualModule$11;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$800(Lcom/android/camera/ManualModule;)Lcom/android/camera/ManualAbstractUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualModule$11;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ManualModule$11;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$1000(Lcom/android/camera/ManualModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ManualModule$11;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v3}, Lcom/android/camera/ManualModule;->access$1000(Lcom/android/camera/ManualModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualModule$11;->val$key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ManualAbstractUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    return-void
.end method
