.class public Lcom/samsung/android/app/omcagent/db/OmcPref$OPTIONAL_APP;
.super Ljava/lang/Object;
.source "OmcPref.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/db/OmcPref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OPTIONAL_APP"
.end annotation


# static fields
.field public static final CHECKED:I = 0x1

.field private static final KEY:Ljava/lang/String; = "OMC.OPT.APP"

.field public static final UNCHECKED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "checked"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "checked"

    goto :goto_0

    :pswitch_1
    const-string v0, "unchecked"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
