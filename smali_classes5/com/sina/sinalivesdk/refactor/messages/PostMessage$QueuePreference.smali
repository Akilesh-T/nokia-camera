.class public final enum Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MultiQueueOnly:Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

.field public static final enum MultiQueuePreferred:Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

.field public static final enum SingleQueueOnly:Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

.field private static final synthetic a:[Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    const-string v1, "SingleQueueOnly"

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;->SingleQueueOnly:Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    const-string v1, "MultiQueueOnly"

    invoke-direct {v0, v1, v3}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;->MultiQueueOnly:Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    const-string v1, "MultiQueuePreferred"

    invoke-direct {v0, v1, v4}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;->MultiQueuePreferred:Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    sget-object v1, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;->SingleQueueOnly:Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;->MultiQueueOnly:Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;->MultiQueuePreferred:Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;->a:[Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;
    .locals 1

    const-class v0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    return-object v0
.end method

.method public static values()[Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;
    .locals 1

    sget-object v0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;->a:[Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    invoke-virtual {v0}, [Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    return-object v0
.end method
