.class final Lcom/android/camera/module/ModulesInfo$1;
.super Ljava/lang/Object;
.source "ModulesInfo.java"

# interfaces
.implements Lcom/android/camera/app/ModuleManager$ModuleAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/ModulesInfo;->registerPhotoModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V
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
    .line 267
    iput p1, p0, Lcom/android/camera/module/ModulesInfo$1;->val$moduleId:I

    iput-boolean p2, p0, Lcom/android/camera/module/ModulesInfo$1;->val$enableCaptureModule:Z

    iput-object p3, p0, Lcom/android/camera/module/ModulesInfo$1;->val$namespace:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeExistCamera()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public createModule(Lcom/android/camera/app/AppController;Landroid/content/Intent;)Lcom/android/camera/module/ModuleController;
    .locals 3
    .param p1, "app"    # Lcom/android/camera/app/AppController;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 290
    invoke-static {}, Lcom/android/camera/module/ModulesInfo;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnableCaptureModule = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/ModulesInfo$1;->val$enableCaptureModule:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 291
    iget-boolean v0, p0, Lcom/android/camera/module/ModulesInfo$1;->val$enableCaptureModule:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/CaptureModule;

    invoke-direct {v0, p1}, Lcom/android/camera/CaptureModule;-><init>(Lcom/android/camera/app/AppController;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/PhotoModule;

    invoke-direct {v0, p1}, Lcom/android/camera/PhotoModule;-><init>(Lcom/android/camera/app/AppController;)V

    goto :goto_0
.end method

.method public getModuleId()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/android/camera/module/ModulesInfo$1;->val$moduleId:I

    return v0
.end method

.method public getScopeNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/camera/module/ModulesInfo$1;->val$namespace:Ljava/lang/String;

    return-object v0
.end method

.method public requestAppForCamera()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/android/camera/module/ModulesInfo$1;->val$enableCaptureModule:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
