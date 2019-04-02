.class public Lcom/thirdparty/arcsoft/engine/EngineActions;
.super Ljava/lang/Object;
.source "EngineActions.java"


# static fields
.field public static final ABORT_ENGINE:I = 0x4

.field public static final INIT_ENGINE:I = 0x1

.field public static final INPUT_IMAGE:I = 0x6

.field public static final PROCESS_RESULT_IMAGE:I = 0x7

.field public static final RELEASE_ENGINE:I = 0x2

.field public static final START_ENGINE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stringify(I)Ljava/lang/String;
    .locals 2
    .param p0, "action"    # I

    .prologue
    .line 16
    packed-switch p0, :pswitch_data_0

    .line 30
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 18
    :pswitch_1
    const-string v0, "INIT_ENGINE"

    goto :goto_0

    .line 20
    :pswitch_2
    const-string v0, "RELEASE_ENGINE"

    goto :goto_0

    .line 22
    :pswitch_3
    const-string v0, "START_ENGINE"

    goto :goto_0

    .line 24
    :pswitch_4
    const-string v0, "ABORT_ENGINE"

    goto :goto_0

    .line 26
    :pswitch_5
    const-string v0, "INPUT_IMAGE"

    goto :goto_0

    .line 28
    :pswitch_6
    const-string v0, "PROCESS_RESULT_IMAGE"

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
