.class Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$1;
.super Ljava/lang/Object;
.source "BeautyEffectEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$1;->this$0:Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$1;->this$0:Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    invoke-static {v0}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->access$000(Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$1;->this$0:Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    invoke-interface {v0, v1}, Lcom/android/camera/app/OrientationManager;->addOnOrientationChangeListener(Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;)V

    .line 44
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$1;->this$0:Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    invoke-static {v0}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->access$100(Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$1;->this$0:Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 45
    return-void
.end method
