.class public final enum Lcom/android/camera/livebroadcast/status/Comment$CommentType;
.super Ljava/lang/Enum;
.source "Comment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/status/Comment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/livebroadcast/status/Comment$CommentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/livebroadcast/status/Comment$CommentType;

.field public static final enum NORMAL:Lcom/android/camera/livebroadcast/status/Comment$CommentType;

.field public static final enum NOTICE:Lcom/android/camera/livebroadcast/status/Comment$CommentType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/livebroadcast/status/Comment$CommentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/status/Comment$CommentType;->NORMAL:Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    new-instance v0, Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    const-string v1, "NOTICE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/livebroadcast/status/Comment$CommentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/livebroadcast/status/Comment$CommentType;->NOTICE:Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    sget-object v1, Lcom/android/camera/livebroadcast/status/Comment$CommentType;->NORMAL:Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/livebroadcast/status/Comment$CommentType;->NOTICE:Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/livebroadcast/status/Comment$CommentType;->$VALUES:[Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/livebroadcast/status/Comment$CommentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/livebroadcast/status/Comment$CommentType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/android/camera/livebroadcast/status/Comment$CommentType;->$VALUES:[Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    invoke-virtual {v0}, [Lcom/android/camera/livebroadcast/status/Comment$CommentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    return-object v0
.end method
