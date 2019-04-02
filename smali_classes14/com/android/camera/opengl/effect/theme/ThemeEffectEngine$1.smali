.class Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$1;
.super Ljava/lang/Object;
.source "ThemeEffectEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$1;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$1;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v0}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$000(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$1;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-interface {v0, v1}, Lcom/android/camera/app/OrientationManager;->addOnOrientationChangeListener(Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$1;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-static {v0}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->access$100(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$1;->this$0:Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 55
    return-void
.end method
