.class public interface abstract Lcom/android/camera/app/ModuleManager$ModuleAgent;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/ModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ModuleAgent"
.end annotation


# virtual methods
.method public abstract closeExistCamera()Z
.end method

.method public abstract createModule(Lcom/android/camera/app/AppController;Landroid/content/Intent;)Lcom/android/camera/module/ModuleController;
.end method

.method public abstract getModuleId()I
.end method

.method public abstract getScopeNamespace()Ljava/lang/String;
.end method

.method public abstract requestAppForCamera()Z
.end method
