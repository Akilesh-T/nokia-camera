.class final Lcom/android/camera/module/ModulesInfo$17;
.super Ljava/lang/Object;
.source "ModulesInfo.java"

# interfaces
.implements Lcom/android/camera/app/ModuleManager$ModuleAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/ModulesInfo;->registerSquareModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Z)V
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
    .line 765
    iput p1, p0, Lcom/android/camera/module/ModulesInfo$17;->val$moduleId:I

    iput-boolean p2, p0, Lcom/android/camera/module/ModulesInfo$17;->val$enableCaptureModule:Z

    iput-object p3, p0, Lcom/android/camera/module/ModulesInfo$17;->val$namespace:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeExistCamera()Z
    .locals 1

    .prologue
    .line 788
    const/4 v0, 0x0

    return v0
.end method

.method public createModule(Lcom/android/camera/app/AppController;Landroid/content/Intent;)Lcom/android/camera/module/ModuleController;
    .locals 1
    .param p1, "app"    # Lcom/android/camera/app/AppController;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/android/camera/module/ModulesInfo$17;->val$enableCaptureModule:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/SquareModule;

    invoke-direct {v0, p1}, Lcom/android/camera/SquareModule;-><init>(Lcom/android/camera/app/AppController;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/SquareModule;

    invoke-direct {v0, p1}, Lcom/android/camera/SquareModule;-><init>(Lcom/android/camera/app/AppController;)V

    goto :goto_0
.end method

.method public getModuleId()I
    .locals 1

    .prologue
    .line 768
    iget v0, p0, Lcom/android/camera/module/ModulesInfo$17;->val$moduleId:I

    return v0
.end method

.method public getScopeNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/camera/module/ModulesInfo$17;->val$namespace:Ljava/lang/String;

    return-object v0
.end method

.method public requestAppForCamera()Z
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/android/camera/module/ModulesInfo$17;->val$enableCaptureModule:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
