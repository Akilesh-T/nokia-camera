.class public Lcom/laifeng/sopcastsdk/video/effect/NullEffect;
.super Lcom/laifeng/sopcastsdk/video/effect/Effect;
.source "NullEffect.java"


# static fields
.field private static final NULL_EFFECT_FRAGMENT:Ljava/lang/String; = "null/fragmentshader.glsl"

.field private static final NULL_EFFECT_VERTEX:Ljava/lang/String; = "null/vertexshader.glsl"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;-><init>()V

    .line 22
    const-string v2, "null/vertexshader.glsl"

    invoke-static {p1, v2}, Lcom/laifeng/sopcastsdk/video/GLSLFileUtils;->getFileContextFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "vertexShader":Ljava/lang/String;
    const-string v2, "null/fragmentshader.glsl"

    invoke-static {p1, v2}, Lcom/laifeng/sopcastsdk/video/GLSLFileUtils;->getFileContextFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "fragmentShader":Ljava/lang/String;
    invoke-super {p0, v1, v0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->setShader(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method
