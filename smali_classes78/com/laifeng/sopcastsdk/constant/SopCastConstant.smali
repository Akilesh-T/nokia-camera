.class public Lcom/laifeng/sopcastsdk/constant/SopCastConstant;
.super Ljava/lang/Object;
.source "SopCastConstant.java"


# static fields
.field public static final BRANCH:Ljava/lang/String; = "open-source"

.field public static final SHARDE_NULL_FRAGMENT:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 textureCoordinate;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, textureCoordinate);\n    gl_FragColor = vec4(tc.r, tc.g, tc.b, 1.0);\n}"

.field public static final SHARDE_NULL_VERTEX:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nuniform   mat4 uPosMtx;\nuniform   mat4 uTexMtx;\nvarying   vec2 textureCoordinate;\nvoid main() {\n  gl_Position = uPosMtx * position;\n  textureCoordinate   = (uTexMtx * inputTextureCoordinate).xy;\n}"

.field public static final TAG:Ljava/lang/String; = "SopCast"

.field public static final VERSION:Ljava/lang/String; = "1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
