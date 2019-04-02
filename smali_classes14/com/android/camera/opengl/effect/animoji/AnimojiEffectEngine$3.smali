.class Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$3;
.super Ljava/lang/Object;
.source "AnimojiEffectEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    invoke-static {v0}, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->access$700(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    invoke-static {v0}, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->access$800(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    invoke-interface {v0, v1}, Lcom/android/camera/app/OrientationManager;->removeOnOrientationChangeListener(Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;)V

    .line 163
    return-void
.end method
