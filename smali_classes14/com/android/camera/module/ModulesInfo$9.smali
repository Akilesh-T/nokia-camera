.class final Lcom/android/camera/module/ModulesInfo$9;
.super Ljava/lang/Object;
.source "ModulesInfo.java"

# interfaces
.implements Lcom/android/camera/app/ModuleManager$ModuleAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/ModulesInfo;->registerVideoCaptureIntentModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enableCaptureModule:Z

.field final synthetic val$moduleId:I

.field final synthetic val$namespace:Ljava/lang/String;


# direct methods
.method constructor <init>(IZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 519
    iput p1, p0, Lcom/android/camera/module/ModulesInfo$9;->val$moduleId:I

    iput-boolean p2, p0, Lcom/android/camera/module/ModulesInfo$9;->val$enableCaptureModule:Z

    iput-object p3, p0, Lcom/android/camera/module/ModulesInfo$9;->val$namespace:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeExistCamera()Z
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public createModule(Lcom/android/camera/app/AppController;Landroid/content/Intent;)Lcom/android/camera/module/ModuleController;
    .locals 2
    .param p1, "app"    # Lcom/android/camera/app/AppController;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/android/camera/module/ModulesInfo$9;->val$enableCaptureModule:Z

    if-eqz v0, :cond_0

    .line 539
    :try_start_0
    new-instance v0, Lcom/android/camera/captureintent/CaptureIntentModule;

    iget-object v1, p0, Lcom/android/camera/module/ModulesInfo$9;->val$namespace:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/camera/captureintent/CaptureIntentModule;-><init>(Lcom/android/camera/app/AppController;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_0
    return-object v0

    .line 540
    :catch_0
    move-exception v0

    .line 543
    :cond_0
    new-instance v0, Lcom/android/camera/VideoModule;

    invoke-direct {v0, p1}, Lcom/android/camera/VideoModule;-><init>(Lcom/android/camera/app/AppController;)V

    goto :goto_0
.end method

.method public getModuleId()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/android/camera/module/ModulesInfo$9;->val$moduleId:I

    return v0
.end method

.method public getScopeNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/camera/module/ModulesInfo$9;->val$namespace:Ljava/lang/String;

    return-object v0
.end method

.method public requestAppForCamera()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/android/camera/module/ModulesInfo$9;->val$enableCaptureModule:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
