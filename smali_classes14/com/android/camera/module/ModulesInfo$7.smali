.class final Lcom/android/camera/module/ModulesInfo$7;
.super Ljava/lang/Object;
.source "ModulesInfo.java"

# interfaces
.implements Lcom/android/camera/app/ModuleManager$ModuleAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/ModulesInfo;->registerGcamModule(Lcom/android/camera/app/ModuleManager;ILjava/lang/String;Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$hdrPlusSupportLevel:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

.field final synthetic val$moduleId:I

.field final synthetic val$namespace:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;)V
    .locals 0

    .prologue
    .line 453
    iput p1, p0, Lcom/android/camera/module/ModulesInfo$7;->val$moduleId:I

    iput-object p2, p0, Lcom/android/camera/module/ModulesInfo$7;->val$namespace:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/module/ModulesInfo$7;->val$hdrPlusSupportLevel:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeExistCamera()Z
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public createModule(Lcom/android/camera/app/AppController;Landroid/content/Intent;)Lcom/android/camera/module/ModuleController;
    .locals 1
    .param p1, "app"    # Lcom/android/camera/app/AppController;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/camera/module/ModulesInfo$7;->val$hdrPlusSupportLevel:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    invoke-static {p1, v0}, Lcom/android/camera/util/GcamHelper;->createGcamModule(Lcom/android/camera/app/AppController;Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;)Lcom/android/camera/CameraModule;

    move-result-object v0

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/android/camera/module/ModulesInfo$7;->val$moduleId:I

    return v0
.end method

.method public getScopeNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/camera/module/ModulesInfo$7;->val$namespace:Ljava/lang/String;

    return-object v0
.end method

.method public requestAppForCamera()Z
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method
