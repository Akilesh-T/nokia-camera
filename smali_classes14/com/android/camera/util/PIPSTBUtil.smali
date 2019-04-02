.class public Lcom/android/camera/util/PIPSTBUtil;
.super Ljava/lang/Object;
.source "PIPSTBUtil.java"


# static fields
.field public static final ENABLE_PIP:Z

.field public static final ENABLE_PIP_GESTURE:Z

.field public static final ENABLE_PIP_STB_DUMP:Z

.field private static final PERSIST_CAM_ENABLE_PIP:Ljava/lang/String; = "persist.vendor.camera.pip"

.field private static final PERSIST_CAM_PIP_GESTURE:Ljava/lang/String; = "persist.camera.pip.gesture"

.field private static final PERSIST_CAM_PIP_STB_DUMP:Ljava/lang/String; = "persist.camera.pip.stb.dump"

.field public static final TAG:Lcom/android/camera/debug/Log$Tag;

.field public static final TAG_GESTURE:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PIPSTBUtil"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/PIPSTBUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 10
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PIPSTBUtil.Ges"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/PIPSTBUtil;->TAG_GESTURE:Lcom/android/camera/debug/Log$Tag;

    .line 15
    const-string v0, "persist.vendor.camera.pip"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP:Z

    .line 16
    sget-boolean v0, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP:Z

    if-eqz v0, :cond_0

    const-string v0, "persist.camera.pip.stb.dump"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_STB_DUMP:Z

    .line 17
    const-string v0, "persist.camera.pip.gesture"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_GESTURE:Z

    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
